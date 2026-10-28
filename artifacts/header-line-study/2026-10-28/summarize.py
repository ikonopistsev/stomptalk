#!/usr/bin/env python3
from pathlib import Path
import json,re,statistics,sys
H=Path(__file__).resolve().parent;R=Path(sys.argv[1]).resolve();r=json.loads((R/'run.json').read_text());assert r['status']=='completed'
rel=str(R.relative_to(H));names={2:'SWAR',3:'SSE2',4:'AVX2'}
lines=['# Отдельная цепочка строки заголовка — 28.10.2026','',
'Последующее упрощение: [одна wire-константа для обоих путей](one-constant/README.md).',
'Приведённые ниже измерения сохраняют свой исходный снимок.','',
'Рабочая ветка `stomptal-smid-2`. Новый hdrline + scan_header_line существует',
'отдельно от прежних hdrline_hdr_key/hdrline_val. Переключатель',
'`STOMPTALK_EXPERIMENT_HEADER_LINE=ON`, по умолчанию OFF. Постоянного cursor,',
'кэша масок, новых полей parser или изменения C ABI нет.','',
'Сканер загружает блок один раз и использует позиции первого двоеточия и EOL.',
'При escape возвращает управление декодеру; продолжение начинается с новых',
'байтов. При разрыве входа прежние key/token сохраняют прогресс. CRLF, ошибки',
'и лимиты проходят прежние проверки. Каскад AVX2 → SSE2 → SWAR → byte.',
'В SWAR применена точная zero-mask: после удаления первого двоеточия',
'borrow-маска старого first-match сканера могла бы ошибочно отметить `;`.','',
'## Проверка content-length','',
'`\\ncontent-length:` занимает ровно 16 байт. Генератор создаёт aligned-константу',
'без дублирования символов. Полностью доступный wire-фрагмент сравнивается',
'одной SSE2-загрузкой; AVX2 наследует этот путь. Если LF/имя/colon пересекают',
'границу входных буферов, используется memcmp на 14 байт. Значение заголовка',
'при этом может быть неполным. Дополнительных флагов состояния нет.','',
'Сначала проверяются HAS_CONTENT_LENGTH и длина имени 14. Только затем',
'выбирается raw/fragmented путь. Это важно: в первой попытке GCC вычислял',
'условие raw-доступа до отсева имени и выполнял его для других заголовков.',
'Первый вариант сохранён в `runs/20261028T061404564350Z`; исправление — в текущей',
'серии. Оба машинных кода сохранены в `gcc-O2-wire-key*.asm`. Само изменение',
'порядка видно в asm; причинный вклад каждой инструкции в скорость не заявлен.','',
'## Замеры полного parser + consumer','',
'Pinned P CPU 4, static PIC, GCC 16 / Clang 23, без PGO/LTO/native. Все backend',
'скомпилированы. После прогрева пять повторов с ротацией девяти вариантов.',
'На запуск 10 млн кадров из original purestomp corpus: 838 B / 10 frames /',
'35 headers / 67 body bytes. Проверяются полезные счётчики, affinity, exit status.',
'Медиана млн кадров/с; Δ времени > 0 означает замедление.','',
'- **baseline** — smid-2 до этой правки, с прежней packed-константой;',
'- **wire** — прежняя цепочка + новая 16-байтная проверка и ранний отсев длины;',
'- **line** — wire + новая объединённая цепочка.','',
'| Compiler | Opt | Backend | Baseline, млн/с | Wire, млн/с | Line, млн/с | Δ wire/base | Δ line/base | Δ line/wire |',
'| --- | --- | --- | ---: | ---: | ---: | ---: | ---: | ---: |']
for x in r['matrix']:
 for b,n in names.items():
  base,wire,line=(x[f'{v}/{b}']['median'] for v in ('baseline','wire','line'))
  lines.append(f"| {x['compiler']} | {x['opt']} | {n} | {10/base:.2f} | {10/wire:.2f} | {10/line:.2f} | {100*(wire/base-1):+.2f}% | {100*(line/base-1):+.2f}% | {100*(line/wire-1):+.2f}% |")
lines+=['','Разброс всех ячеек и исходные samples есть в run.json. Стабильное ускорение',
'всех сборок/сценариев не предполагается. Общую замену цепочки пока не включали.',
'В текущей серии GCC/O3/SSE2 line имеет один выброс: spread 52.44%; четыре',
'остальных запуска лежат в 0.5565–0.5597 с. Выброс сохранён, не исключён.',
'Wire отдельно регрессирует на GCC/O3/SSE2 (+7.66%) и Clang/O2/SSE2 (+3.81%).','',
'## GNU time: C purestomp','',
'AUTO/SSE2, O2, 100 млн кадров. Три повтора после прогрева, ротация порядка.',
'Медиана real/user/sys, секунды.','',
'| Compiler | Baseline | Wire | Line |','| --- | ---: | ---: | ---: |']
for c in ('gcc16','clang23'):
 vals=[]
 for v in ('baseline','wire','line'):
  vals.append('/'.join(f'{statistics.median(x[k] for x in r["defaults"] if x["compiler"]==c and x["variant"]==v):.2f}' for k in ('real','user','sys')))
 lines.append(f'| {c} | '+ ' | '.join(vals)+' |')
lines+=['',
'Это исходный C-драйвер purestomp, а не probe из основной матрицы. Он имеет',
'другой consumer и компоновку executable. В GCC/O2 результат line здесь лучше,',
'хотя probe показал +1.35% времени. Причина расхождения не установлена;',
'считать один результат опровержением другого или общей гарантией нельзя.',
'Все real/user/sys samples сохранены; wire/GCC real имеет spread 3.37%.','',
'## Размер .text probe','', '| Compiler | Opt | Baseline | Wire | Line |','| --- | --- | ---: | ---: | ---: |']
for x in r['matrix']:
 sizes=[int(re.search(r'^\.text\s+(\d+)',(R/f'{x["compiler"]}-{x["opt"]}-{v}-size.stdout').read_text(),re.M).group(1)) for v in ('baseline','wire','line')]
 lines.append(f'| {x["compiler"]} | {x["opt"]} | '+ ' | '.join(map(str,sizes))+' |')
lines+=['','## Сценарии и профили','',
'Первый проход проверил 24 сценария × 2 компилятора × 3 backend. После изменения',
'порядка проверок повторены 8 выбранных O2-сценариев (LF, короткие/много headers,',
'long fields, literal, content-length, chunk 7/31). Всё — настоящий parser и',
'consumer, без аллокации внутри таймера. [Таблицы](SCENARIOS.md).','',
'У line есть существенные регрессии длинных значений: long_1024 SSE2',
'**+33.71% GCC / +27.33% Clang**; SWAR **+11.82% / +69.71%**.',
'На 64 коротких заголовках SSE2, наоборот, −17.05% / −15.06% времени.',
'Это причина оставить цепочку экспериментальной. В части коротких Clang',
'сценариев spread достигает 87%; их малые дельты не считаются доказанными.','',
'Perf: шесть профилей SSE2/O2, cycles:u, 997 Hz, по **100 млн кадров**,',
'примерно на порядок больше samples, чем в предыдущей backend-серии.',
'Workload/counters одинаковы, top-5 self ≥1% в [PROFILES.md](PROFILES.md).',
'Работа inline helper учитывается внутри состояния; проценты не доказывают',
'причину регрессии. Новое hdrline следует сравнивать с суммой key/value.','',
'## Проверки','',
'GCC/Clang Os/O2/O3 × wire/line: CTest и C99 smoke. До изменения порядка проверок',
'также SSE2-only, SWAR-only, O0 с NDEBUG, shared, ASan/UBSan. Последний вариант снова',
'прошёл ASan/UBSan и ограниченный ручной fuzz. LSan выключен. Число запусков',
'сохранено в manual-fuzz.stderr каждой серии: 420414 / 31 с до исправления,',
'250275 / 16 с после него; находок нет. Обычная all-backend сборка выполняет',
'20688 потоковых вариантов / 5980812 проверок. Дополнительный Debug с assert',
'описан в validation.json. Генератор воспроизводит константы.',
'Проверены guard pages с обеих сторон, misalignment, все позиции событий,',
'colon/semicolon borrow, literal/escaped режимы, CRLF, оба края 8/16/32,',
'фрагментация и лимиты. Неполный payload не сохраняется внутри parser.','',
'## Воспроизведение','',
'```sh','python3 run.py --full','python3 run.py --full --followup','python3 summarize.py runs/<run-id>','```','',
'Все исходники каждой серии заморожены, с SHA256 в run.json. Baseline до правки',
'сохранён в before/. Существующий baseline binary берётся из предыдущей',
'backend-redesign серии; при его отсутствии run.py собирает before/.',
'Актуальный исходник отличается от первой попытки',
'только ранним отсевом длины (и расположением комментария).','',f'[Команды, samples, stdout/stderr и hashes]({rel}/run.json).',
'Ревью предыдущего backend: [ответ Claude](../../backend-redesign/2026-10-28/CLAUDE_RESPONSE.md).']
(H/'README.md').write_text('\n'.join(lines)+'\n')
sc=['# Сценарии O2: нс/кадр','', '| Compiler | Scenario | Backend | Base | Wire | Line | Δ wire/base | Δ line/base | Spread base/wire/line |','| --- | --- | --- | ---: | ---: | ---: | ---: | ---: | ---: |']
for x in r['scenarios']:
 for b,n in names.items():
  a,w,l=(x[f'{v}/{b}']['median'] for v in ('baseline','wire','line'));spread='/'.join(f'{x[f"{v}/{b}"]["spread_percent"]:.1f}%' for v in ('baseline','wire','line'))
  sc.append(f'| {x["compiler"]} | {x["name"]} | {n} | {a:.2f} | {w:.2f} | {l:.2f} | {100*(w/a-1):+.2f}% | {100*(l/a-1):+.2f}% | {spread} |')
(H/'SCENARIOS.md').write_text('\n'.join(sc)+'\n')
pr=['# Длинные профили SSE2 / O2',''];top=[]
for x in r['profiles']:
 s=(R/(x['label']+'-report.stdout')).read_text();rows=[]
 for line in s.splitlines():
  m=re.match(r'\s*(\d+\.\d+)%\s+\[.\]\s+(.+)',line)
  if m and float(m.group(1))>=1 and len(rows)<5:rows.append(dict(percent=float(m.group(1)),symbol=re.split(r'\s{2,}',m.group(2).strip())[0]))
 lost=[v for v in s.splitlines() if 'lost' in v.lower()];assert lost==['# Total Lost Samples: 0'],lost
 pr += [f'## {x["compiler"]} / {x["variant"]}','']+[f'- {v["percent"]:.2f}% — `{v["symbol"]}`' for v in rows]+['',f'[Raw]({rel}/{x["label"]}-report.stdout)','']
 top.append(dict(**x,top5=rows,lost=lost))
(H/'PROFILES.md').write_text('\n'.join(pr)+'\n');(H/'top5.json').write_text(json.dumps(top,indent=2)+'\n');print(H/'README.md')
