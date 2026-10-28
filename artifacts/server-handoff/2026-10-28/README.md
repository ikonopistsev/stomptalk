# Очистка smid-2 и передача Clang PGO — 28.10.2026

Удалены `hdrline_hdr_key`, `hdrline_val`, прежний `scan_header` в четырёх
backend-ах, приблизительный zero-mask и пустой `STOMPTALK_STATE_TARGET`.
`hdrline` — единственная цепочка; экспериментальный CMake-переключатель удалён.
AVX2 TU нужен для изоляции инструкций и сохранён. Tailcall, escaping, контракт
памяти/результатов и проверки протокола не менялись.

`src` + `include`: **2912 → 2725 строк**, те же 23 файла (−187 строк, −6.42%).
Это очистка исходников: `.text` plain probe до/после побайтно одинаков при
Clang O2 и O3. SHA-256 `.text`: O2
`e99d90f6fcc30a33bf4e484b5835e3e686a3b9fa7f4d737d074b33e94dde52fb`, O3
`287d5bfa904c0bb6325166ff980ba650e75c1826b7a3b6c4d5bcab395615f27a`.
Скрипты сборки/обучения в эту метрику production-кода не входят.

## Профиль и цикл CTest

[PGO.md](../../../PGO.md) описывает команду `ctest -S cmake/ClangPGO.cmake`:
инструментированная библиотека → тесты/нагрузка → merge → use → тесты.
Опциональный trainer позволяет обучить библиотеку на сервере. Обычные CTest
проверки не запускают пересборку. PGO compile flags локальны для library targets.

[Готовый профиль](../../../pgo/clang23.profdata), 21856 байт, SHA-256
`ab73d8001b447b3623cb6569990321e3760a01cc776c63548776a6225094025d`.
Оба независимых цикла O2/O3 дали одинаковые IR-счётчики; хранится один файл.
Clang 23.1.4 / x86-64 / static PIC / all backends; unit + 5 млн кадров purestomp
AUTO/SSE2 + 100 кадров C99 smoke. Instrumentation только в библиотеке, с atomic
counters. Файл не содержит серверного профиля. Internal function names используют
basenames; перенос подтверждён отдельной копией source и новым CMake cache.

## Производительность

P-core 4, SSE2, без LTO и явного `-march=native`, 5 чередующихся повторов после
прогрева, **10 млн кадров** на probe-повтор. Driver одинаковый, без PGO во всех
вариантах, включая контрольные старые библиотеки. GNU time: original C purestomp,
100 млн кадров, три пары после прогрева. Число кадров/заголовков/байтов проверяется.

| Сборка | Plain, млн кадров/с | Новый PGO, млн кадров/с | Δ времени probe | Разброс plain / PGO | GNU time real, 100 млн |
| --- | ---: | ---: | ---: | ---: | ---: |
| Clang O2 | 19.09 | 22.78 | -16.20% | 2.87% / 5.68% | 5.13 → 4.30 с |
| Clang O3 | 19.14 | 22.29 | -14.14% | 1.68% / 1.47% | 4.95 → 4.36 с |

O2 time имеет разброс 4.09%/8.84%; сравнение близких результатов с O3 ненадёжно.
Очистка без PGO: O2 19.04 → 19.09, O3 19.17 → 19.14 млн/с; разница в шуме,
`.text` совпадает. Старый/новый PGO при одинаковом driver: O2 22.42 → 22.78,
O3 22.48 → 22.29 млн/с. Уверенного выигрыша нового обучения над старым нет.
Новый профиль меньше по составу и обучен иначе; это не только перенос старого файла.

`.text` всего probe plain → новый PGO: O2 **43092 → 64474**, O3 **45188 → 69018**
байт. При старом PGO и таком же driver: 74890 / 78890 байт. Уменьшение PGO `.text`
относится к новому обучению; очистка не уменьшила уже сгенерированный plain-код.

Дополнительно проверены 24 сценария/оптимизацию, три пары, raw и sample arrays
в `measurements.json`. O3: long_1024 −4.60% времени, byte SEND с длиной −4.03%,
escaped −7.12%; chunk:7 SEND с длиной +0.33% внутри разброса. O2: escaped +3.28%
при разбросе 4.69%/6.33%, отдельный короткий send_length очень шумный (74–79%).
Слабые дельты не объявляются выигрышем/регрессией. Unit-обучение использует
сходные edge cases, поэтому эти сценарии нельзя целиком назвать held-out.
Главный purestomp входил в обучение. Серверный выигрыш ещё не измерен.

## Perf: первые значимые символы

Каждый профиль: cycles:u, 997 Hz, 100 млн кадров; lost samples = 0. Self-%
учитывает inlining: `hdrline_done` после Clang PGO включает значительную часть
дерева, это не цена одного логического состояния.

| Сборка | Символ | Self |
| --- | --- | ---: |
| O2 plain | `char const* stomptalk::parser::hdrline<3u>(char const*, char const*)` | 40.02% |
| O2 plain | `stomptalk::parser::finish_value(char const*)` | 23.48% |
| O2 plain | `char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)` | 7.78% |
| O2 plain | `char const* stomptalk::parser::method_state<3u>(char const*, char const*)` | 6.80% |
| O2 plain | `main` | 5.07% |
| O2 pgo | `char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)` | 89.14% |
| O2 pgo | `main` | 5.50% |
| O2 pgo | `stomptalk_parser_execute` | 2.20% |
| O2 pgo | `char const* stomptalk::parser::start_state<3u>(char const*, char const*)` | 0.65% |
| O2 pgo | `memcpy@plt` | 0.56% |
| O3 plain | `char const* stomptalk::parser::hdrline<3u>(char const*, char const*)` | 40.98% |
| O3 plain | `stomptalk::parser::finish_value(char const*)` | 23.29% |
| O3 plain | `char const* stomptalk::parser::method_state<3u>(char const*, char const*)` | 7.27% |
| O3 plain | `char const* stomptalk::parser::body_read_no_length<3u>(char const*, char const*)` | 6.89% |
| O3 plain | `main` | 5.83% |
| O3 pgo | `char const* stomptalk::parser::hdrline_done<3u>(char const*, char const*)` | 90.05% |
| O3 pgo | `main` | 4.25% |
| O3 pgo | `stomptalk_parser_execute` | 2.00% |
| O3 pgo | `char const* stomptalk::parser::start_state<3u>(char const*, char const*)` | 0.87% |
| O3 pgo | `memcpy@plt` | 0.57% |

## Проверки

- GCC 16 O2/O3, Clang 23 O2/O3; Debug/assert; SSE2-only и без SIMD.
- CTest PGO generate/use O2/O3, отдельный relocated profile-use O2/O3 и shared.
- Отдельный CTest cycle с `PGO_ITERATIONS=0`, `PGO_TRAINER` и AVX2=OFF:
  trainer установил instrumented static target, собрал внешнего C99-потребителя
  (C/CXX CMake project), записал счётчики; merge/use/tests прошли.
  [Скрипт проверки hook](trainer-smoke.sh), [лог цикла](trainer-ctest.log).
- Установка shared + внешний C99-only проект через `find_package`, 100000 кадров.
- ASan/UBSan + ручной fuzz: **351884 запуска / 31 с**, без находок; LSan выключен.
- All-backend suite: **20688 потоков / 4185057 проверок**. Уменьшение checks
  связано с удалением тестов старого scan_header; проверки нового scanner,
  guard pages, все разрезы и протокольные ожидания сохранены.
- Хэши production-исходников совпадают с `pgo/source.sha256`; `git diff --check` чист.

[verification.json](verification.json), [verify.py](verify.py),
[measurements.json](measurements.json), [measure.py](measure.py),
[top5.json](top5.json), [сверка Claude review](CLAUDE_RESPONSE.md).
Raw stdout/stderr, perf reports и CTest logs сохранены рядом. Исполняемые файлы,
raw профили и perf.data исключены из Git. Готовый `.profdata` хранится отдельно
в `pgo/`. Исторический контроль — frozen source предыдущей PGO-матрицы
`20261028T071754232573Z`; старые записи не переписаны.
