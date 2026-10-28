#!/usr/bin/env python3
from pathlib import Path
import json, re, statistics, sys
H=Path(__file__).resolve().parent
R=Path(sys.argv[1]) if len(sys.argv)>1 else H/'runs/20261028T054341442204Z'
r=json.loads((R/'run.json').read_text());assert r['status']=='completed',r['status']
rel=str(R.relative_to(H));names={2:'SWAR',3:'SSE2',4:'AVX2'}
lines=['# Backend redesign — 28.10.2026','',
'Ветка `stomptal-smid-2`, исходная точка — текущая smid с ранее проверенными',
'core TU/hidden visibility, до замены backend. Это сравнение **до/после данного',
'изменения**, не повторная матрица версий 1.8.0/2.0.0. Точный исходный код —',
'`before/` и `'+rel+'/source/`; SHA256 записаны в run.json.', '',
'Сканер: AVX2 32 → SSE2 16 → SWAR 8 → байты. Сравнение: шаблонный equal<N>',
'или runtime equal, SIMD → один memcmp на остаток. SWAR здесь обозначает поиск',
'разделителей через uint64, **не отдельный SWAR equal**. Константы content-length',
'для portable/SIMD разделены. Общий C ABI, дерево состояний и stackbuf сохранены.', '',
'## Полный parser + consumer','',
'GCC 16 и Clang 23, static PIC, все optional backend включены. Без PGO/LTO/',
'глобального -march=native. CPU 4 (P), affinity проверена у каждого запуска.',
'Original purestomp corpus: 838 байт, 10 кадров, 35 headers, 67 байт body.',
'Один прогрев и пять чередующихся повторов по 10 млн кадров на ячейку.',
'Приведены медианы; Δ времени > 0 означает замедление. Все samples сохранены.', '',
'| Compiler | Opt | Backend | До, млн/с | После, млн/с | Δ времени | Spread до/после |',
'| --- | --- | --- | ---: | ---: | ---: | ---: |']
for row in r['matrix']:
 for b,n in names.items():
  x=row[f'before/{b}'];y=row[f'after/{b}'];d=100*(y['median']/x['median']-1)
  lines.append(f"| {row['compiler']} | {row['opt']} | {n} | {10/x['median']:.2f} | {10/y['median']:.2f} | {d:+.2f}% | {x['spread_percent']:.2f}% / {y['spread_percent']:.2f}% |")
lines+=['','Общего ускорения всех сборок нет. Результаты следует оценивать по своему',
'compiler/optimization/workload. Широкий каскад сам по себе не доказывает выигрыш.',
'Причина регрессий не объявляется доказанной проблемой I-cache или inlining.','',
'## C purestomp через GNU time','',
'AUTO (на этом CPU SSE2), O2. После прогрева три чередующиеся пары по',
'100 млн кадров; медианы real/user/sys. Это отдельный C consumer.', '',
'| Compiler | До real/user/sys, с | После real/user/sys, с | Δ real |',
'| --- | ---: | ---: | ---: |']
for c in ('gcc16','clang23'):
 def val(v,k):return statistics.median(x[k] for x in r['defaults'] if x['compiler']==c and x['variant']==v)
 old='/'.join(f'{val("before",k):.2f}' for k in ('real','user','sys'));new='/'.join(f'{val("after",k):.2f}' for k in ('real','user','sys'))
 lines.append(f'| {c} | {old} | {new} | {100*(val("after","real")/val("before","real")-1):+.2f}% |')
lines+=['','## Размер исполняемого кода','',
'`.text` того же probe, одинаковые настройки до/после, в байтах.','',
'| Compiler | Opt | До | После | Δ |','| --- | --- | ---: | ---: | ---: |']
for row in r['matrix']:
 c,o=row['compiler'],row['opt'];size=[]
 for v in ('before','after'):
  s=(R/f'{c}-{o}-{v}-size.stdout').read_text();size.append(int(re.search(r'^\.text\s+(\d+)',s,re.M).group(1)))
 lines.append(f'| {c} | {o} | {size[0]} | {size[1]} | {size[1]-size[0]:+d} |')
lines+=['','Объём исходников (без исторических `_` helpers, включая generated dictionaries):',
'см. [source-size.json](source-size.json). Объём активного кода существенно не',
'сократился; удаление старых файлов не выдаётся за сокращение алгоритма.',
'В шести сборках nm не обнаружил отдельных символов scan/equal/load/mask:',
'[inline-symbols.json](inline-symbols.json). Это не означает отсутствие libc-вызовов.', '',
'## Отдельные сценарии','',
'24 сценария × 6 сборок × 3 backend. После прогрева по три пары с одинаковым',
'числом итераций; медиана нс/кадр. Короткие запуски шумнее основного теста.',
'Включены LF/CRLF, 0/1/8/32/64 headers, long fields, escapes/literal, body и chunks.',
'[Полная таблица](SCENARIOS.md); сырые значения — run.json.', '',
'## Perf: первые пять значимых функций','',
'cycles:u, 997 Hz, тот же pinned CPU и corpus. Self samples, без children.',
'Не более пяти функций с долей ≥1%; названия сохраняются из perf report.',
'Inlining относит работу helper к вызывающему состоянию. Проценты — доли samples,',
'не отдельный замер длительности функции. [Все 36 профилей](PROFILES.md).','',
'## Проверки и воспроизведение','',
'Все шесть полных сборок после изменений прошли CTest. Дополнительно GCC/Clang',
'SSE2-only и SWAR-only, прямые DISABLE-макросы, раздельные AVX2 parser/names,',
'debug, shared + C symbols, installed C99 client, ASan/UBSan, generator воспроизводимость.',
'Guard pages/смещения/короткие хвосты, неравный байт в каждой позиции, scanner',
'borrow-neighbours и parser fragmentation/escaping/limits/payload проверены.',
'Ручной fuzz: 405222 runs / 31 s без находок; LSan выключен. Это ограниченный прогон.',
'[Validation](validation/20261028T054050081090Z/run.json).','',
'```sh','python3 build_baseline.py','python3 validate.py','python3 measure.py --mode full','python3 summarize.py runs/<run-id>','```','',
'Команды запускаются из этого каталога; пути входов берутся относительно скриптов.',
'`before/` — замороженный baseline. `measure.py` копирует текущий рабочий исходник.',
'Логи, команды, CPU/wall time, счётчики полезной работы и source hashes —',f'[{rel}/run.json]({rel}/run.json).','',
'## Ревью','',
'[Проверка реализации автором](REVIEW.md). Независимое Claude-review не получено:',
'предыдущий CLI-запуск завершился DNS EAI_AGAIN. Результат Claude не выдумывается.',
'Пакет нового ревью и скрипт находятся в `implementation-review/`.']
(H/'README.md').write_text('\n'.join(lines)+'\n')
sc=['# Сценарии полного парсера','', 'Δ > 0 — замедление; samples и spread остаются в run.json.','',
'| Compiler | Opt | Scenario | Backend | До нс/кадр | После нс/кадр | Δ | Spread до/после |','| --- | --- | --- | --- | ---: | ---: | ---: | ---: |']
for row in r['scenarios']:
 for b,n in names.items():
  x,y=row[f'before/{b}'],row[f'after/{b}'];sc.append(f"| {row['compiler']} | {row['opt']} | {row['name']} | {n} | {x['median']:.2f} | {y['median']:.2f} | {100*(y['median']/x['median']-1):+.2f}% | {x['spread_percent']:.1f}% / {y['spread_percent']:.1f}% |")
(H/'SCENARIOS.md').write_text('\n'.join(sc)+'\n')
pr=['# Perf top-5 (self ≥1%)',''];profile_rows=[]
for p in r['profiles']:
 label=p['label'];s=(R/(label+'-report.stdout')).read_text() if p['success'] else ''
 top=[]
 for line in s.splitlines():
  m=re.match(r'\s*(\d+\.\d+)%\s+\[.\]\s+(.+)',line)
  if m and float(m.group(1))>=1 and len(top)<5:top.append(dict(percent=float(m.group(1)),symbol=re.split(r'\s{2,}',m.group(2).strip())[0]))
 pr += [f"## {p['compiler']} / {p['opt']} / {names[p['backend']]} / {p['variant']}",'']
 for x in top:pr.append(f"- {x['percent']:.2f}% — `{x['symbol']}`")
 if not top:pr.append('Профиль не получен или формат требует ручного разбора.')
 pr+=['',f'[Raw report]({rel}/{label}-report.stdout)','']
 profile_rows.append(dict(**p,top5=top,lost=[x for x in s.splitlines() if 'lost' in x.lower()]))
(H/'PROFILES.md').write_text('\n'.join(pr)+'\n');(H/'top5.json').write_text(json.dumps(profile_rows,indent=2)+'\n')
print(H/'README.md')
