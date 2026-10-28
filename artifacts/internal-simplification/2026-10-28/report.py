#!/usr/bin/env python3
"""Render the recorded evidence without dropping outliers or regressed cases."""
from pathlib import Path
import json,re,statistics
H=Path(__file__).resolve().parent
ROOT=H.parents[2]
matrix=json.loads((H/'runs/20261028T171057-final/run.json').read_text())
m=json.loads((H/'measurements/measurements.json').read_text())
v=json.loads((H/'validation/verification.json').read_text())
assert matrix['status']==m['status']==v['status']=='completed'

def table(head,rows):
    return '\n'.join(['| '+' | '.join(head)+' |','| '+' | '.join(['---']*len(head))+' |']+
                     ['| '+' | '.join(map(str,r))+' |' for r in rows])+'\n'
def pair(row,backend):
    b,a=row[f'before/{backend}'],row[f'after/{backend}']
    return f"{10/b['median']:.2f} → {10/a['median']:.2f}"
main=table(['Compiler','Opt','SWAR, млн/с','SSE2, млн/с','AVX2, млн/с'],
           [[r['compiler'],r['opt'],*[pair(r,b) for b in (2,3,4)]] for r in matrix['matrix']])
spread=table(['Compiler','Opt','SWAR до/после','SSE2 до/после','AVX2 до/после'],
    [[r['compiler'],r['opt'],*[f"{r[f'before/{b}']['spread_percent']:.2f}% / {r[f'after/{b}']['spread_percent']:.2f}%"
                              for b in (2,3,4)]] for r in matrix['matrix']])
size=table(['Compiler','Opt','.text до → после, байты'],
    [[c,o,' → '.join(re.search(r'^\.text\s+(\d+)',next(s['output'] for s in matrix['sizes']
        if s['compiler']==c and s['opt']==o and s['variant']==v),re.M)[1] for v in ('before','after'))]
     for c in ('clang23','gcc16') for o in ('Os','O2','O3')])
ret=table(['Compiler','Opt','Сценарий','Δ времени','Spread до/после'],
    [[s['compiler'],s['opt'],s['name'],f"{100*(s['after']['median']/s['before']['median']-1):+.2f}%",
      f"{s['before']['spread_percent']:.2f}% / {s['after']['spread_percent']:.2f}%"] for s in m['rechecks']])
counter=[]
for c in ('clang23','gcc16'):
    for o in ('Os','O2','O3'):
        z={}
        for variant in ('before','after'):
            samples={k:[] for k in ('cycles','instructions','branches','branch-misses')}
            for x in m['counters']:
                if (x['compiler'],x['opt'],x['variant'])!=(c,o,variant):continue
                for line in x['raw'].splitlines():
                    parts=line.split(';')
                    if len(parts)>4:
                        assert parts[4]=='100.00',line
                        samples[parts[2].split('/')[1]].append(float(parts[0])/1e7)
            z[variant]={k:statistics.median(s) for k,s in samples.items()}
        counter.append(dict(compiler=c,opt=o,**z))
(H/'counters.json').write_text(json.dumps(counter,indent=2)+'\n')
ct=table(['Compiler','Opt','Инструкции/кадр до → после','Переходы/кадр до → после'],
         [[s['compiler'],s['opt'],*[f"{s['before'][k]:.1f} → {s['after'][k]:.1f}"
            for k in ('instructions','branches')]] for s in counter])
pgo=table(['Clang','До plain','До PGO','После plain','После PGO'],
          [[s['opt'],*[f"{10/s[k]['median']:.2f}" for k in ('before/plain','before/pgo','after/plain','after/pgo')]] for s in m['pgo']])
times=table(['Clang','До plain','До PGO','После plain','После PGO'],
    [[s['opt'],*[' / '.join(f"{statistics.median([sample[i] for sample in s[k]['samples']]):.2f}" for i in range(3))
               for k in ('before/plain','before/pgo','after/plain','after/pgo')]] for s in m['times']])
top=[]
for s in m['profiles']:
    report=(H/'measurements'/f"{s['compiler']}-{s['opt']}-{s['variant']}.perf.txt").read_text()
    assert re.search(r'Total Lost Samples: 0\b',report)
    top.append(f"## {s['compiler']} {s['opt']} {s['variant']}\n\n"+
        table(['Self, %','Функция'],[[f"{x['percent']:.2f}",re.sub(r'\s+-\s+-\s*$','',x['symbol']).rstrip()]
                                  for x in s['top5']]))
(H/'TOP5.md').write_text('# Perf: первые пять функций\n\n'
    'SSE2, P CPU 4, 100 млн кадров/профиль, cycles:u, 997 Гц. Во всех 12 записях lost=0.\n'
    'Self показывает скомпилированные границы функций: inline меняет распределение.\n\n'+'\n'.join(top))
pgocases=[]
for row in m['pgo_scenarios']:
    for s in row['scenarios']:
        pgocases.append([row['opt'],s['name'],f"{100*(s['pgo']['median']/s['plain']['median']-1):+.2f}%",
            f"{s['plain']['spread_percent']:.2f}% / {s['pgo']['spread_percent']:.2f}%"])
(H/'PGO_CASES.md').write_text('# Новый PGO против нового plain\n\n'
    'SSE2, CPU 4, прогрев + 3 пары, около 50 мс на сценарий. Все результаты сохранены;\n'
    'эти формы не входили в purestomp training, но сходные edge cases покрываются unit suite.\n\n'+
    table(['Clang','Сценарий','Δ времени PGO/plain','Spread plain/PGO'],pgocases))
readme='''# Упрощение внутренних гарантий parser — 2026-10-28

База: `e30e2aa8b2b49daebaf07ceea3dcbccdfe8177fe` (`before/`).
Проверены все 23 production-файла, изменены 8; публичный C API прежний.
Исходный stackbuf 1.8.0 не менялся. Новых объектов, состояний и allocator-ов нет.
[Обоснование по каждому файлу и связи классов](FILE_REVIEW.md).

Один счётчик остатка вместо повторных вычислений в reserve; stackbuf пишет уже
учтённые байты. Убраны невозможные отказы push, повторный own_token в escape,
повторные status/length/layout проверки. Малые helpers видны AVX2 TU, без нового
force-inline. Проверки malformed input, ресурсов и безопасных SIMD хвостов сохранены.

## Полный parser + consumer

i7-12700K, P CPU 4, те же 838 байтов / 10 кадров original purestomp.
Clang 23.1.4 / GCC 16, PIC Release, без PGO/LTO/march=native. Прогрев + 5
чередующихся повторов по 10 млн кадров. Медианы, до → после:

'''+main+'''
Разброс `(max-min)/median`; выбросы не удалялись:

'''+spread+'''
Особенно шумный Clang Os/AVX2 (один выброс 0,839 с). Итог подтверждает выигрыш
основного корпуса, не всех возможных кадров и не сервера.

## Отдельные сценарии

24 сценария на каждый compiler/opt, включая escape, CRLF, большие строки,
body, batches и фрагменты. Исходные 3 пары около 30 мс сохранены в run.json.
Для потерь >1,5% отдельно проведены прогрев + 7 пар около 300 мс:

'''+ret+'''
Потери не скрываются: прежде всего Clang O3 без заголовков и некоторые способы
фрагментации. Новому счётчику требуется начальный расчёт доступного места каждого
кадра; внутри строк он уменьшает повторную работу. Отдельный вклад этой арифметики
в регрессию не доказан. Ради коротких сценариев не добавлялись обходные состояния.

## Исполняемые инструкции и код

Perf stat, 3 пары по 10 млн кадров, cpu_core user events в одной группе,
running=100%, multiplexing нет. Счётчики включают весь probe + consumer:

'''+ct+'''
Production src/include: **2725 → 2692 строки**, те же 23 файла.
Размер `.text` идентичного probe (включает библиотеку и consumer):

'''+size+'''
В Clang код уменьшился. GCC O2/O3 инлайнит больше и увеличивает .text;
меньше исходных условий не означает автоматически меньший бинарник.
[Assembly call references](assembly-calls.json): AVX2 O2/O3 больше не вызывает
append/reserve/finish_token отдельно. В Os компиляторы оставляют часть вызовов.
[Top-5 всех 12 perf-профилей](TOP5.md), lost=0.

## Пересозданный Clang PGO

Два независимых CTest generate → tests/training → merge → use → tests.
O2/O3 профили совпали: `pgo/clang23.profdata`, 20968 байтов, 86 функций.
Обучение библиотеки: unit suite всех backend-ов + C99 + 5 млн кадров purestomp,
atomic IR counters. Старый профиль сохранён в previous-pgo; новый имеет
собственный source.sha256. Profile-use warnings не подавлялись.

Отдельный чередующийся контроль, млн кадров/с:

'''+pgo+'''
GNU time C99 purestomp, 100 млн кадров, прогрев + 3 пары; real/user/sys, секунды:

'''+times+'''
В отдельной PGO-матрице spread после/PGO: O2 0,68%, O3 0,88%; после/plain
O2 7,84%, O3 0,33%. В GNU time после/PGO O2 0,24%, O3 0,00% при округлении
time до сотых. Полные samples/spread сохранены в measurements.json.
PGO .text до → после: O2 64474 → 59888, O3 69018 → 63072 байта.

Сценарии PGO/plain: [все 48 результатов](PGO_CASES.md). В O2 escaping потерял
26,83% времени против нового plain (spread 2,24/1,96%). В O3 этот же сценарий
+2,32% при spread 1,21/1,82%. Готовый профиль — не универсальная
рекомендация: для серверного сравнения обучить на его трафике по PGO.md.
Процент выигрыша сервера из этих данных не следует.

## Корректность и воспроизведение

- Все 12 before/after Release вариантов GCC/Clang Os/O2/O3 прошли CTest/C99.
- Final Debug/assert, SSE2-only, noSIMD, ASan/UBSan с включёнными assertions — pass.
- 21008 streams / 4198701 checks на полном backend наборе; ошибки/offsets,
  OUTPUT_FULL/BYTE_LIMIT и приоритеты, escape, все разрезы, guard pages сохранены.
- Ручной fuzz, seed 1801, max_len 8192: **348369 запусков / 31 с**, без находок.
- Новый PGO проверен из другого source root в O2/O3/static/shared; установленная
  DSO использована внешним C99-проектом. C++ implementation symbols не экспортируются.
- Production-хэши validation совпадают с pgo/source.sha256. От frozen final
  отличается только уточнённый комментарий byte_left, без изменения кода.

Запускать по очереди, чтобы сборки/fuzz не мешали замерам:

```sh
python3 artifacts/internal-simplification/2026-10-28/run.py --label repeat
python3 artifacts/internal-simplification/2026-10-28/verify.py
python3 artifacts/internal-simplification/2026-10-28/measure.py
python3 artifacts/internal-simplification/2026-10-28/report.py
```

run.py создаёт новый immutable source snapshot; measure.py/report.py для этого
отчёта закреплены за `20261028T171057-final`, при новой матрице изменить путь.
measure.py использует прежние profile-use builds `build-pgo/{O2,O3}/use` как
старый PGO reference: их нельзя предварительно пересобрать новым кодом. Для
чистого checkout прежнюю базу/профиль восстановить из before/ и previous-pgo/.
Команды, сырые выводы, samples/spread и хэши сохранены в runs/, validation/,
measurements/. Перед публикацией в сервер использовать новый профиль.
'''
(H/'README.md').write_text(readme)
print(main)
print(pgo)
print(times)
