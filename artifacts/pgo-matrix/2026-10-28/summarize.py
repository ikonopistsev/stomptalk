#!/usr/bin/env python3
from pathlib import Path
import json, re, statistics, sys

H=Path(__file__).resolve().parent
R=Path(sys.argv[1]).resolve()
r=json.loads((R/'run.json').read_text())
assert r['status']=='completed'
rel=str(R.relative_to(H))
lines=['# Четыре сочетания PGO — 28.10.2026','',
'Текущая `stomptal-smid-2`, единая wire-константа и name-classifier предусловия',
'с assert. **Объединённая hdrline включена в этих сборках**; рабочий CMake default',
'по-прежнему OFF. После выбора эксперимента исходник заморожен для всех пар.',
'Варианты plain и PGO различаются compiler flags/профилем, не исходниками.','',
'GCC 16.2.1 / Clang 23.1.4, O2/O3, static PIC, все backend скомпилированы;',
'измеряемый backend — **SSE2**, CPU **4 (P-core)**. Без LTO и march=native.',
'CPU affinity проверяется для каждого измерения. Частота CPU не фиксировалась.','',
'## Полный parser + consumer','',
'Исходный purestomp corpus: 838 байт, 10 кадров, 35 headers, 67 body bytes.',
'10 млн кадров на запуск; один прогрев и пять чередующихся повторов. Проверяются',
'consumed/completed/headers/body/connected/json, отсутствие ошибки и short read.',
'Медиана млн кадров/с. Положительная дельта времени означает замедление.','',
'| Compiler | Opt | Без PGO, млн/с | PGO, млн/с | Прирост скорости | Δ времени | Spread без/с PGO |',
'| --- | --- | ---: | ---: | ---: | ---: | ---: |']
for x in r['matrix']:
 a,b=x['plain'],x['pgo']
 lines.append(f"| {x['compiler']} | {x['opt']} | {10/a['median']:.2f} | {10/b['median']:.2f} | {100*(a['median']/b['median']-1):+.2f}% | {100*(b['median']/a['median']-1):+.2f}% | {a['spread_percent']:.2f}% / {b['spread_percent']:.2f}% |")
lines+=['',
'У GCC/O2 разброс около 13% в обеих выборках; все повторы сохранены. Для остальных',
'пар он ≤2.56%. Это синтетический профиль, обучавшийся в том числе на purestomp:',
'полученные скорости не являются оценкой сервера или неизвестного RPC-трафика.',
'PGO не устраняет автоматически прежние регрессии hdrline к split scanner.','',
'Локальные регрессии остаются: GCC/O3 h0_lf **+11.16%**, long_1024 **+7.95%**',
'времени; GCC/O2 send_length_byte **+11.21%**, Clang/O3 тот же сценарий',
'**+8.56%**. Разброс этих примеров ≤1.80%, поэтому их нельзя списать на шум.','',
'## GNU time: исходный C purestomp','',
'AUTO/SSE2, 100 млн кадров, прогрев и три чередующиеся пары. Медианы',
'real/user/sys в секундах; sys=0.00 — округление. Это другой driver/consumer,',
'поэтому его значения не подменяют предыдущую таблицу.','',
'| Compiler | Opt | Без PGO real/user/sys | PGO real/user/sys | Δ real |',
'| --- | --- | ---: | ---: | ---: |']
for x in r['matrix']:
 d={v:{k:statistics.median(z[k] for z in r['defaults'] if z['compiler']==x['compiler'] and z['opt']==x['opt'] and z['variant']==v) for k in ('real','user','sys')} for v in ('plain','pgo')}
 lines.append(f"| {x['compiler']} | {x['opt']} | "+' | '.join('/'.join(f'{d[v][k]:.2f}' for k in ('real','user','sys')) for v in ('plain','pgo'))+f" | {100*(d['pgo']['real']/d['plain']['real']-1):+.2f}% |")
lines+=['','## Размер .text probe','',
'| Compiler | Opt | Без PGO, байты | PGO, байты |','| --- | --- | ---: | ---: |']
for x in r['matrix']:
 size=[]
 for v in ('plain','pgo'):
  s=next(z['output'] for z in r['sizes'] if z['compiler']==x['compiler'] and z['opt']==x['opt'] and z['variant']==v)
  size.append(int(re.search(r'^\.text\s+(\d+)',s,re.M).group(1)))
 lines.append(f"| {x['compiler']} | {x['opt']} | {size[0]} | {size[1]} |")
lines+=['','## Обучение и воспроизводимость','',
'Для каждого из четырёх сочетаний отдельный профиль: generate → training → use.',
'GCC использует тот же build path для generate/use, `-fprofile-generate=<dir>`',
'и `-fprofile-use=<dir> -Werror=coverage-mismatch -Werror=missing-profile`.',
'Clang использует IR PGO: `-fprofile-generate=<dir>`, затем LLVM 23 profdata merge',
'и `-fprofile-use=merged.profdata`, с ошибками на устаревший/непокрытый профиль.',
'Точные команды, версии и SHA256 профилей сохранены.','',
'Нагрузочное обучение: по 5 млн кадров original/SSE2 и AVX2, по 1 млн scalar',
'и SWAR; ещё 5 млн через C purestomp/SSE2. По 10000 итераций h8_lf, long_128,',
'escaped, literal, fragment_chunk_7, body64k_markers и send_length для SSE2/AVX2.',
'Сначала instrumented unit suite создаёт покрытие холодных функций. GCC-профили',
'двух parser TU после unit удалены и набраны заново нагрузкой. Clang IR raw',
'профили unit включены в merge; существенные счётчики parser набраны миллионами',
'нагрузочных кадров. Это различие методик явно учтено, не скрыто.','',
'Generate unit/training имеют локальный лимит стека 64 МиБ из-за влияния',
'инструментирования на хвостовые переходы. Plain/use тесты и все измерения',
'работали со штатным стеком 8 МиБ. Generate-скорость нигде не сравнивается.','',
'Все 8 итоговых Release CTest/C99 и Debug/assert прошли.',
'All-backend unit suite: 20688 streams / 5980809 checks. Дополнительный',
'debug smoke подтвердил UNKNOWN для NULL/0 и SIGABRT для NULL/ненулевой длины',
'в обоих classifiers; команды и stderr сохранены в validation/ текущего run.',
'Сценарии полного парсера проверяют те же полезные счётчики, что и основной тест. Измерены',
'24 сценария на каждую пару: [таблица](SCENARIOS.md). Пометка held-out означает',
'отсутствие конкретного fixture в нагрузочном обучении; unit coverage может',
'проходить похожие ветки. Отдельный fuzz на этом шаге не запускался.','',
'8 perf-профилей (plain/PGO × 4), по 100 млн кадров, cycles:u/997 Hz,',
'lost samples=0. [Топ пяти значимых функций](PROFILES.md). Изменение процентов',
'само по себе не объясняет причину ускорения.','',
'## Ревью и дальнейшая работа','',
'[Аудит условий и проверок](CHECK_AUDIT.md) отделяет уже внесённые изменения',
'name helpers от кандидатов: двойной layout, tailcall status, подтверждённый',
'NUL и выбор 14/16 байт. Они не смешаны с экспериментом PGO.',
'[Задание для внешнего Claude](review/TASK.md); запуск подготовлен отдельно.',
'Серверный профиль следует обучать на реальном трафике и отдельно валидировать.',
'PGO и hdrline не включаются в default этим исследованием.','',
'```sh', 'python3 artifacts/pgo-matrix/2026-10-28/run.py --chain line',
f'python3 artifacts/pgo-matrix/2026-10-28/summarize.py artifacts/pgo-matrix/2026-10-28/{rel}',
'```','',f'[Все команды, повторы, profile/source hashes]({rel}/run.json).','']
(H/'README.md').write_text('\n'.join(lines))
sc=['# Сценарии полного парсера SSE2: нс/кадр','',
'PGO сравнивается с plain hdrline в той же сборке. Trained — участвовал в',
'нагрузочном обучении; held-out — не участвовал напрямую.','',
'| Compiler | Opt | Scenario | Training | Plain | PGO | Δ времени | Spread plain/PGO |',
'| --- | --- | --- | --- | ---: | ---: | ---: | ---: |']
for x in r['scenarios']:
 a,b=x['plain'],x['pgo']
 sc.append(f"| {x['compiler']} | {x['opt']} | {x['name']} | {'trained' if x['trained'] else 'held-out'} | {a['median']:.2f} | {b['median']:.2f} | {100*(b['median']/a['median']-1):+.2f}% | {a['spread_percent']:.2f}% / {b['spread_percent']:.2f}% |")
(H/'SCENARIOS.md').write_text('\n'.join(sc)+'\n')
top=[];pr=['# Perf top-5: self ≥1%, SSE2, 100 млн кадров','']
for x in r['profiles']:
 s=(R/(x['label']+'-report.stdout')).read_text();assert '# Total Lost Samples: 0' in s
 rows=[]
 for line in s.splitlines():
  m=re.match(r'\s*(\d+\.\d+)%\s+\[.\]\s+(.+)',line)
  if m and float(m.group(1))>=1 and len(rows)<5:
   rows.append(dict(percent=float(m.group(1)),symbol=re.split(r'\s{2,}',m.group(2).strip())[0]))
 pr += [f"## {x['compiler']} / {x['opt']} / {x['variant']}",'']+[f"- {z['percent']:.2f}% — `{z['symbol']}`" for z in rows]+['',f"[Raw]({rel}/{x['label']}-report.stdout)",'']
 top.append(dict(**x,top5=rows,lost_samples=0))
(H/'PROFILES.md').write_text('\n'.join(pr)+'\n')
(H/'top5.json').write_text(json.dumps(top,indent=2)+'\n')
summary={k:r[k] for k in ('chain','cpu','backend','matrix','defaults','sizes','training','training_cases','held_out_cases','source_sha256','versions')}
(H/'summary.json').write_text(json.dumps(summary,indent=2)+'\n')
print(H/'README.md')
