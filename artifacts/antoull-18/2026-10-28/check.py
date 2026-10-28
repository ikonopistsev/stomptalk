#!/usr/bin/env python3
"""Compare the original 1..18-digit converter with c41715a; CPU 4 on this host."""
from pathlib import Path
import hashlib, json, os, re, shutil, statistics, subprocess, time

H = Path(__file__).resolve().parent
ROOT = H.parents[2]
FIX = ROOT / 'artifacts/backend-redesign/2026-10-28'
LLVM = Path('/usr/lib/llvm/23/bin')
BASE = 'c41715a'
COMPILERS = {'clang23': (LLVM/'clang', LLVM/'clang++'),
             'gcc16': ('/usr/bin/gcc-16', '/usr/bin/g++-16')}
EXPECTED = dict(consumed=838, completed=10, headers=35, body_bytes=67, connected=1, json=1)
r = dict(status='running', cpu=4, commands=[], matrix=[], scenarios=[], profiles=[], times=[], sizes=[], pgo=[])

def save():
    (H/'checks.json').write_text(json.dumps(r, indent=2)+'\n')

def run(label, args, pin=False):
    args = list(map(str, args))
    start = time.monotonic()
    def affinity(): os.sched_setaffinity(0, {4})
    p = subprocess.run(args, capture_output=True, text=True, cwd=ROOT,
        env=dict(os.environ, LC_ALL='C', ASAN_OPTIONS='detect_leaks=0:halt_on_error=1',
                 UBSAN_OPTIONS='halt_on_error=1'), preexec_fn=affinity if pin else None)
    row = dict(label=label, args=args, exit=p.returncode, seconds=time.monotonic()-start)
    r['commands'].append(row)
    with (H/'commands.jsonl').open('a') as f:
        f.write(json.dumps(dict(row, stdout=p.stdout, stderr=p.stderr))+'\n')
    save()
    if p.returncode: raise RuntimeError(label+': '+p.stderr[-2500:]+p.stdout[-2500:])
    return p.stdout

def stats(v):
    m = statistics.median(v)
    return dict(samples=v, median=m, spread_percent=100*(max(v)-min(v))/m)

def check(out, count, expected):
    d = json.loads(out)
    assert not d['error'] and not d['short_read'] and d['iterations'] == count, d
    for k, n in expected.items(): assert d['body_bytes' if k == 'body' else k] == n*count, d
    return d['elapsed_ns']/1e9

def probe(label, binary, count=1000000, backend=3, path=None, plan='whole', expected=EXPECTED):
    return check(run(label, [binary, path or FIX/'fixtures/original.bin', plan, count, backend], True), count, expected)

def build(label, source, cc, cxx, opt, extra=()):
    b = H/'build'/label
    run(label+'-configure', ['cmake', '-G', 'Ninja', '-S', source, '-B', b,
        '-DCMAKE_C_COMPILER='+str(cc), '-DCMAKE_CXX_COMPILER='+str(cxx),
        '-DCMAKE_BUILD_TYPE=Release', '-DCMAKE_C_FLAGS_RELEASE=-'+opt+' -DNDEBUG',
        '-DCMAKE_CXX_FLAGS_RELEASE=-'+opt+' -DNDEBUG', '-DSTOMPTALK_BUILD_TESTS=ON', *extra])
    run(label+'-build', ['cmake', '--build', b, '-j', '4'])
    run(label+'-test', ['ctest', '--test-dir', b, '--output-on-failure'])
    shutil.copy2(b/'Testing/Temporary/LastTest.log', H/(label+'-test.log'))
    print('Passed:', label, flush=True)
    return b

def link_probe(label, cxx, opt, source, b):
    run(label+'-probe', [cxx, '-'+opt, '-DNDEBUG', '-std=c++14', '-DSTOMPTALK_STATIC',
        '-I'+str(source/'include'), FIX/'probe.cpp', b/'libstomptalk.a', '-o', b/'probe'])
    r['sizes'].append(dict(label=label, output=run(label+'-size', ['size', '-A', b/'probe'])))
    return b/'probe'

try:
    # Keep snapshots in ignored build/. Commit + patch + hashes reproduce them.
    files = run('source-files', ['git', 'ls-tree', '-r', '--name-only', BASE, '--',
        'CMakeLists.txt', 'src', 'include', 'cmake', 'test', 'fuzz']).splitlines()
    r['base_commit'] = run('base-commit', ['git', 'rev-parse', BASE]).strip()
    r['source_sha256'] = {}
    for variant in ('before', 'after'):
        source = H/'build'/variant
        for name in files:
            dest = source/name
            dest.parent.mkdir(parents=True, exist_ok=True)
            data = subprocess.check_output(['git', 'show', BASE+':'+name], cwd=ROOT) if variant == 'before' else (ROOT/name).read_bytes()
            dest.write_bytes(data)
        r['source_sha256'][variant] = {f: hashlib.sha256((source/f).read_bytes()).hexdigest() for f in files}
    (H/'source.patch').write_bytes(subprocess.check_output(['git', 'diff', BASE, '--',
        'src', 'include', 'test', 'cmake', 'CMakeLists.txt'], cwd=ROOT))
    binary = {}
    for c, (cc, cxx) in COMPILERS.items():
        for opt in ('Os', 'O2', 'O3'):
            for v in ('before', 'after'):
                label = f'{c}-{opt}-{v}'
                source = H/'build'/v
                b = build(label, source, cc, cxx, opt)
                binary[c, opt, v] = link_probe(label, cxx, opt, source, b)
    build('debug', ROOT, LLVM/'clang', LLVM/'clang++', 'O0', ['-DCMAKE_BUILD_TYPE=Debug'])
    san = build('sanitize', ROOT, LLVM/'clang', LLVM/'clang++', 'O1',
        ['-DSTOMPTALK_BUILD_FUZZ=ON', '-DCMAKE_C_FLAGS_RELEASE=-O1 -g', '-DCMAKE_CXX_FLAGS_RELEASE=-O1 -g'])
    corpus = H/'build/fuzz-corpus'
    corpus.mkdir(exist_ok=True)
    for src in (ROOT/'fuzz/corpus').rglob('*'):
        if src.is_file(): shutil.copy2(src, corpus/hashlib.sha256(src.read_bytes()).hexdigest())
    run('fuzz-30s', [san/'fuzz_stomptalk_v2', '-seed=1801', '-max_total_time=30', '-max_len=8192', corpus])
    print('Sanitizers and fuzz passed', flush=True)
    for c in COMPILERS:
        for opt in ('Os', 'O2', 'O3'):
            values = {f'{v}/{b}': [] for b in (2, 3, 4) for v in ('before', 'after')}
            cells = list(values)
            for rep in range(-1, 5):
                off = rep % len(cells)
                for cell in cells[off:]+cells[:off]:
                    v, b = cell.split('/')
                    t = probe(f'{c}-{opt}-{cell}-{rep}', binary[c, opt, v], backend=int(b))
                    if rep >= 0: values[cell].append(t)
            r['matrix'].append(dict(compiler=c, opt=opt, **{k: stats(v) for k, v in values.items()}))
            save()
            print('Matrix:', c, opt, {k: round(10/statistics.median(v), 2) for k, v in values.items()}, flush=True)
    cases = json.loads((FIX/'cases.json').read_text())
    for c in COMPILERS:
        for opt in ('Os', 'O2', 'O3'):
            for name, case in cases.items():
                path = FIX/'fixtures'/(name+'.bin')
                assert hashlib.sha256(path.read_bytes()).hexdigest() == case['sha256']
                args = dict(path=path, plan=case['plan'], expected=case['expected'])
                pilot = probe('calibrate-'+name, binary[c, opt, 'before'], count=2000, **args)
                count = max(2000, min(3000000, int(.03*2000/pilot)))
                values = {v: [] for v in ('before', 'after')}
                for rep in range(-1, 3):
                    for v in (('before', 'after') if rep % 2 else ('after', 'before')):
                        t = probe(f'{c}-{opt}-{name}-{v}-{rep}', binary[c, opt, v], count=count, **args)
                        if rep >= 0: values[v].append(t)
                r['scenarios'].append(dict(compiler=c, opt=opt, name=name, iterations=count,
                    **{k: stats(v) for k, v in values.items()}))
            for v in ('before', 'after'):
                label = f'{c}-{opt}-{v}'
                data = H/'build'/(label+'.perf.data')
                out = run(label+'-record', ['perf', 'record', '-q', '-e', 'cycles:u', '-F', '997', '-o', data,
                    '--', binary[c, opt, v], FIX/'fixtures/original.bin', 'whole', 10000000, 3], True)
                check(out, 10000000, EXPECTED)
                report = run(label+'-report', ['perf', 'report', '-i', data, '--stdio', '--no-children', '--percent-limit', '0.5', '--sort', 'symbol'])
                (H/(label+'.perf.txt')).write_text('\n'.join(line.rstrip() for line in report.splitlines())+'\n')
                top = []
                for line in report.splitlines():
                    match = re.match(r'\s*([0-9.]+)%\s+\[.\]\s+(.+)', line)
                    if match and len(top) < 5:
                        top.append(dict(percent=float(match[1]), symbol=re.sub(r'\s+-\s+-\s*$', '', match[2]).rstrip()))
                r['profiles'].append(dict(label=label, top5=top))
                timing = H/(label+'.time')
                out = run(label+'-time', ['/usr/bin/time', '-f', '%e %U %S', '-o', timing,
                    binary[c, opt, v].parent/'purestomp', 0, 10000000], True)
                assert out.splitlines()[-1] == 'connected 10000000, frame 100000000, json 10000000, total 670000000'
                r['times'].append(dict(label=label, real_user_sys=list(map(float, timing.read_text().split()))))
            save()
            print('Scenarios, perf and GNU time:', c, opt, flush=True)
    shutil.copytree(ROOT/'pgo', H/'build/previous-pgo', dirs_exist_ok=True)
    for opt in ('O2', 'O3'):
        work = H/'build'/('pgo-'+opt)
        run('pgo-'+opt, ['ctest', '-S', ROOT/'cmake/ClangPGO.cmake', '-DPGO_LLVM_DIR='+str(LLVM),
            '-DPGO_OPT='+opt, '-DPGO_WORK='+str(work), '-VV'])
        for f in ('profile.txt', 'compiler.txt', 'options.txt', 'source.sha256'):
            shutil.copy2(work/f, H/('pgo-'+opt+'-'+f))
        pgo = link_probe('pgo-'+opt, LLVM/'clang++', opt, ROOT, work/'use')
        for name, case in dict(original=dict(plan='whole', expected=EXPECTED), **cases).items():
            path = FIX/'fixtures'/(name+'.bin')
            args = dict(path=path, plan=case['plan'], expected=case['expected'])
            pilot = probe('pgo-calibrate-'+name, pgo, count=2000, **args)
            count = 1000000 if name == 'original' else max(2000, min(3000000, int(.05*2000/pilot)))
            values = {v: [] for v in ('plain', 'pgo')}
            for rep in range(-1, 5 if name == 'original' else 3):
                for v in (('plain', 'pgo') if rep % 2 else ('pgo', 'plain')):
                    t = probe(f'pgo-{opt}-{name}-{v}-{rep}', pgo if v == 'pgo' else binary['clang23', opt, 'after'], count=count, **args)
                    if rep >= 0: values[v].append(t)
            r['pgo'].append(dict(opt=opt, name=name, iterations=count, **{k: stats(v) for k, v in values.items()}))
        print('PGO:', opt, flush=True)
    o2 = H/'build/pgo-O2/stomptalk.profdata'
    o3 = H/'build/pgo-O3/stomptalk.profdata'
    assert o2.read_bytes() == o3.read_bytes(), 'Retain separate profiles if training differs'
    shutil.copy2(o3, ROOT/'pgo/clang23.profdata')
    shutil.copy2(H/'build/pgo-O3/source.sha256', ROOT/'pgo/source.sha256')
    meta = json.loads((ROOT/'pgo/metadata.json').read_text())
    for opt in ('O2', 'O3'):
        work = H/'build'/('pgo-'+opt)
        meta['profiles'][opt].update(sha256=hashlib.sha256(o3.read_bytes()).hexdigest(), bytes=o3.stat().st_size,
            summary=(work/'profile.txt').read_text(), options=(work/'options.txt').read_text().strip())
    meta['source_base_commit'] = r['base_commit']
    meta['source_manifest'] = 'source.sha256 (original 1..18-digit antoull, no uint64 overload)'
    (ROOT/'pgo/metadata.json').write_text(json.dumps(meta, indent=2)+'\n')
    assert all(hashlib.sha256((ROOT/f).read_bytes()).hexdigest() == sha for f, sha in r['source_sha256']['after'].items())
    r['status'] = 'completed'
finally:
    save()
