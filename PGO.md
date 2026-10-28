# Clang PGO для stomptalk

Ветка `stomptal-smid-2`. PGO включается для самой библиотеки; обычная сборка
остаётся без инструментирования. Готовый профиль: [pgo/clang23.profdata](pgo/clang23.profdata).
Он обучен на тестах и purestomp, а не на серверном RPC. Для серверного A/B
предпочтительно получить собственный профиль тем же сценарием ниже.

Профиль обновлён после упрощения reserve/append/stackbuf. На текущем коде
Clang O3 PGO даёт 23,80 млн кадров/с на purestomp; при O2 сценарий escaping
с PGO медленнее plain на 26,83%. Поэтому выбор профиля проверяется на целевой
нагрузке. [Матрица, GNU time и сценарии](artifacts/internal-simplification/2026-10-28/README.md).

## Один запуск через CTest

Нужны CMake/CTest 3.21+, Make, Clang и `llvm-profdata` из одной установки LLVM
с runtime для профилирования. Проверено на Linux x86-64, Clang **23.1.4**.
Из корня репозитория:

```sh
ctest -S cmake/ClangPGO.cmake \
  -DPGO_LLVM_DIR=/usr/lib/llvm/23/bin \
  -DPGO_OPT=O3 -VV
```

Путь LLVM заменить на серверный. Если `PGO_LLVM_DIR` не задан, скрипт находит
`clang` в PATH и ищет `clang++`/`llvm-profdata` в том же каталоге.

Сценарий выполняет последовательно:

1. Release-сборка `build-pgo/O3/generate` с инструментированием библиотеки.
2. Unit/C99 тесты и `purestomp 0 500000`: 5 млн кадров, AUTO выбирает SSE2
   при его доступности. Unit-тесты дополнительно проходят все доступные backend-ы.
3. Необязательный серверный обучающий скрипт.
4. `llvm-profdata merge` всех raw-файлов **этого** запуска.
5. Отдельная сборка `build-pgo/O3/use` с полученным профилем и повторные тесты.

Результат — `build-pgo/O3/stomptalk.profdata`, готовая библиотека в `use/`,
CTest-логи в обоих каталогах, `compiler.txt`, `options.txt`, `profile.txt` и
`source.sha256`. Сценарий останавливается при ошибке любого этапа. Повторный
запуск очищает только `build-pgo/O3/raw/*.profraw`, чтобы не смешивать обучение
разных исходников. Каталоги `generate` и `use` используются повторно.
Обычный `ctest --test-dir build` не запускает двухэтапную пересборку.

Для O2 достаточно заменить `-DPGO_OPT=O2`; профили и сборки будут в другом каталоге.

| Параметр `ctest -S` | Значение |
| --- | --- |
| `PGO_OPT` | `O2` или `O3`, по умолчанию O3 |
| `PGO_WORK` | Каталог результата; по умолчанию `build-pgo/<opt>` |
| `PGO_JOBS` | Параллельность сборки, по умолчанию 4; обучение последовательное |
| `PGO_ITERATIONS` | Повторы 10 кадров purestomp; 500000 по умолчанию, 0 отключает этот прогон |
| `PGO_TRAINER` | Абсолютный путь к исполняемому скрипту серверного обучения |
| `PGO_CMAKE_OPTIONS` | Дополнительные CMake-опции через `;`, одинаковые на generate/use |

Например, для обучения только на серверной нагрузке после коротких unit/C99
проверок и без AVX2:

```sh
ctest -S cmake/ClangPGO.cmake \
  -DPGO_LLVM_DIR=/usr/lib/llvm/23/bin -DPGO_OPT=O3 \
  -DPGO_WORK="$PWD/build-pgo/server-O3" \
  -DPGO_ITERATIONS=0 -DPGO_TRAINER=/absolute/path/train-stomperd.sh \
  '-DPGO_CMAKE_OPTIONS=-DSTOMPTALK_BUILD_AVX2=OFF' -VV
```

## Контракт серверного обучающего скрипта

`PGO_TRAINER` запускается как `trainer <generate-build> <raw-dir>` и наследует
`LLVM_PROFILE_FILE=<raw-dir>/%m-%p.profraw`. Это исполняемый файл, не строка shell.
Он должен собрать сервер с инструментированной библиотекой из первого аргумента,
прогнать репрезентативную нагрузку, корректно завершить сервер и вернуть 0 только
после успешной проверки. `SIGKILL` не даёт runtime сохранить счётчики. Входной
сетевой трафик сохранять необязательно: профиль содержит счётчики выполнения.

Библиотеку можно установить из `generate-build` через `cmake --install` в
отдельный prefix, затем использовать `find_package(stomptalk 2 CONFIG REQUIRED)`
и `stomptalk::stomptalk`. Сгенерированный CMake target передаёт потребителю
`-fprofile-generate` **на линковку**, чтобы подключить runtime. При ручной линковке
его необходимо добавить самостоятельно. Компилировать сервер для этого же LLVM;
его исходники инструментировать необязательно. Генерация использует атомарные
счётчики, чтобы многопоточная нагрузка не теряла обновления.

После обучения CTest пересобирает и проверяет библиотеку в `use/`. Серверный
агент затем пересобирает сам сервер с этой библиотекой, без инструментирования,
и сравнивает с обычной сборкой. Скорость instrumented executable не является
результатом PGO. Для полноценного PGO всего сервера нужен отдельный профиль,
включающий его исходники; библиотечный профиль нельзя выдавать за такой профиль.

Обучать на обычном распределении методов/заголовков/тел и фрагментации. Проверять
скорость также на нагрузке, которая не участвовала в обучении. Короткий RPC,
длинные заголовки и побайтовая подача могут реагировать на PGO по-разному.

## Сборка с уже приложенным профилем

Профиль проверен для текущих исходников, Clang 23.1.4, x86-64, O2 и O3,
static PIC и shared. Все backend-ы скомпилированы; AUTO/SSE2 — основной
обучающий путь. Файлы двух независимых обучений O2/O3 совпали, поэтому хранится
один. Это свойство данных запусков, а не обещание взаимозаменяемости любых
профилей между уровнями оптимизации.

```sh
sha256sum -c pgo/source.sha256
cmake -S . -B build-server-pgo \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_C_COMPILER=/usr/lib/llvm/23/bin/clang \
  -DCMAKE_CXX_COMPILER=/usr/lib/llvm/23/bin/clang++ \
  -DCMAKE_C_FLAGS_RELEASE='-O3 -DNDEBUG' \
  -DCMAKE_CXX_FLAGS_RELEASE='-O3 -DNDEBUG' \
  -DSTOMPTALK_BUILD_TESTS=ON -DSTOMPTALK_LIBRARY_INSTALL=ON \
  -DSTOMPTALK_PGO_PROFILE="$PWD/pgo/clang23.profdata"
cmake --build build-server-pgo -j4
ctest --test-dir build-server-pgo --output-on-failure
cmake --install build-server-pgo --prefix "$PWD/build-server-pgo/install"
```

Обычный контроль собрать в другом каталоге с теми же compiler/flags, но с
`-DSTOMPTALK_PGO_PROFILE=`. Для O2 заменить обе строки `FLAGS_RELEASE`.
`CMAKE_PREFIX_PATH` серверного проекта должен указывать на соответствующий
install prefix. Тест скорости: `taskset -c <P-core> /usr/bin/time -p
./build-server-pgo/purestomp 3 10000000` — **100 млн кадров**, а не 10 млн.
На другой машине номер P-core определить заново.

Для `add_subdirectory` выставить `STOMPTALK_PGO_PROFILE` перед подключением
stomptalk и линковать `stomptalk::stomptalk`. Не класть `-fprofile-use` с этим
файлом в глобальные `CMAKE_CXX_FLAGS` всего сервера: это профиль только библиотеки.

## Совместимость и диагностика

Метаданные и SHA-256 профиля — [pgo/metadata.json](pgo/metadata.json).
После изменения parser, compiler/target, backend-настроек, LTO или существенных
флагов получить новый профиль. Приложенный файл не предназначен для GCC.
PGO-опции CMake взаимоисключающие: `STOMPTALK_PGO_GENERATE=ON` либо
`STOMPTALK_PGO_PROFILE=/absolute/file.profdata`. Fuzz — отдельная сборка.

При use включены ошибки для отсутствующего/устаревшего профиля функций.
Не подавлять их для получения «успешной» PGO-сборки; переобучить с теми же
исходниками и настройками. Профиль не зависит от каталога checkout: в generate
и use автоматически задан `-mllvm -static-func-full-module-prefix=false`.
Имена исходных файлов библиотеки различны; нормализация действует только на её
targets. `-ffile-prefix-map` сам по себе не устранил абсолютные имена IR-счётчиков
в проверенном Clang. Перенос проверен отдельной копией исходников и новым cache.

Инструментирование может мешать tailcall: только unit-тест generate-сборки на
Unix получает стек 64 МиБ для проверки 100000 кадров в одном вызове. Обычная
и use-сборка тестируются с штатным лимитом стека. Это не изменение памяти parser.

Схема IR PGO описана в [руководстве Clang](https://clang.llvm.org/docs/UsersManual.html#profile-guided-optimization),
объединение счётчиков — в [llvm-profdata](https://llvm.org/docs/CommandGuide/llvm-profdata.html#merge).
Поведение префикса внутренних функций задано в
[LLVM InstrProf.cpp](https://llvm.org/doxygen/InstrProf_8cpp_source.html).
