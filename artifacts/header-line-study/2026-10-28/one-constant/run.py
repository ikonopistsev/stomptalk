#!/usr/bin/env python3
"""Check constant reuse independently of the preceding header-line experiment."""
from pathlib import Path
from datetime import datetime, timezone
import hashlib, json, os, shutil, statistics, subprocess, time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
BASE = HERE.parent / 'runs/20261028T062508203190Z'
PROBE = ROOT / 'artifacts/backend-redesign/2026-10-28'
OUT = HERE / 'runs' / datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S%fZ')
OUT.mkdir(parents=True)
result = dict(status='building', cpu=4, commands=[], code=[], matrix=[])
compilers = {'gcc16': ('/usr/bin/g++-16', '/usr/bin/gcc-16'),
             'clang23': ('/usr/lib/llvm/23/bin/clang++', '/usr/lib/llvm/23/bin/clang')}

def save():
    (OUT / 'run.json').write_text(json.dumps(result, indent=2) + '\n')

def run(label, args, pin=False):
    args = list(map(str, args)); start = time.monotonic()
    with (OUT / (label + '.stdout')).open('w') as out, (OUT / (label + '.stderr')).open('w') as err:
        child = subprocess.Popen(args, stdout=out, stderr=err,
            env=dict(os.environ, LC_ALL='C', ASAN_OPTIONS='detect_leaks=0', UBSAN_OPTIONS='halt_on_error=1'),
            preexec_fn=(lambda: os.sched_setaffinity(0, {4})) if pin else None)
        affinity = sorted(os.sched_getaffinity(child.pid)) if pin else None
        if pin: assert affinity == [4]
        code = child.wait()
    result['commands'].append(dict(label=label, args=args, exit=code,
        seconds=time.monotonic()-start, affinity=affinity)); save()
    assert code == 0, label
    return (OUT / (label + '.stdout')).read_text()

try:
    source = OUT / 'source'; source.mkdir()
    for name in ('src', 'include', 'test', 'fuzz', 'cmake', 'protocol'):
        shutil.copytree(ROOT / name, source / name)
    for name in ('CMakeLists.txt', 'stomptalkgen.js', 'package.json', 'package-lock.json'):
        shutil.copy2(ROOT / name, source / name)
    result['source_sha256'] = {str(p.relative_to(source)): hashlib.sha256(p.read_bytes()).hexdigest()
        for p in source.rglob('*') if p.is_file()}
    print(OUT, flush=True)

    def build(compiler, opt, suffix='', extra=()):
        cxx, cc = compilers[compiler]; label = compiler + '-' + opt + suffix
        dest = OUT / 'build' / label
        run(label+'-configure', ['cmake', '-G', 'Ninja', '-S', source, '-B', dest,
            '-DCMAKE_BUILD_TYPE=Release', '-DCMAKE_CXX_COMPILER='+cxx, '-DCMAKE_C_COMPILER='+cc,
            '-DCMAKE_CXX_FLAGS_RELEASE=-'+opt+' -DNDEBUG', '-DCMAKE_C_FLAGS_RELEASE=-'+opt+' -DNDEBUG',
            '-DSTOMPTALK_BUILD_TESTS=ON', *extra])
        run(label+'-build', ['cmake', '--build', dest, '-j', '4'])
        run(label+'-test', ['ctest', '--test-dir', dest, '--output-on-failure'])
        shutil.copy2(dest / 'Testing/Temporary/LastTest.log', OUT / (label+'-test-detail.log'))
        if not suffix:
            run(label+'-probe', [cxx, '-'+opt, '-DNDEBUG', '-std=c++14', '-DSTOMPTALK_STATIC',
                '-I'+str(source/'include'), PROBE/'probe.cpp', dest/'libstomptalk.a', '-o', dest/'probe'])
        return dest

    builds = {}
    for compiler in compilers:
        for opt in ('Os', 'O2', 'O3'):
            dest = build(compiler, opt); builds[compiler, opt] = dest
            code = {}
            for variant, binary in [('before', BASE/'build'/f'{compiler}-{opt}-wire'/'probe'), ('after', dest/'probe')]:
                text = OUT / f'{compiler}-{opt}-{variant}.text'
                run(f'{compiler}-{opt}-{variant}-text', ['objcopy', '--dump-section', '.text='+str(text), binary])
                code[variant] = dict(size=text.stat().st_size, sha256=hashlib.sha256(text.read_bytes()).hexdigest())
            result['code'].append(dict(compiler=compiler, opt=opt, equal=code['before']==code['after'], **code)); save()
        print('Release tests and code comparison:', compiler, flush=True)
    build('clang23', 'O2', '-line', ['-DSTOMPTALK_EXPERIMENT_HEADER_LINE=ON'])
    build('gcc16', 'O2', '-swar', ['-DSTOMPTALK_BUILD_SSE2=OFF'])
    build('clang23', 'O1', '-sanitize', ['-DSTOMPTALK_EXPERIMENT_HEADER_LINE=ON',
        '-DCMAKE_CXX_FLAGS_RELEASE=-O1 -g -DNDEBUG -fsanitize=address,undefined -fno-omit-frame-pointer -DSTOMPTALK_TRAMPOLINE',
        '-DCMAKE_C_FLAGS_RELEASE=-O1 -g -DNDEBUG -fsanitize=address,undefined'])
    result['status'] = 'measuring'; save()
    for compiler in compilers:
        cells = [(v,b) for b in (2,3,4) for v in ('before','after')]
        samples = {f'{v}/{b}': [] for v,b in cells}
        for repeat in range(-1, 5):
            offset = repeat % len(cells)
            for variant, backend in cells[offset:]+cells[:offset]:
                binary = (BASE/'build'/f'{compiler}-O2-wire' if variant=='before' else builds[compiler,'O2'])/'probe'
                value = json.loads(run(f'bench-{compiler}-{variant}-{backend}-{repeat}',
                    [binary, PROBE/'fixtures/original.bin', 'whole', 1000000, backend], True))
                assert not value['error'] and not value['short_read'] and value['iterations']==1000000
                for key, count in dict(consumed=838,completed=10,headers=35,body_bytes=67,connected=1,json=1).items():
                    assert value[key] == count*1000000
                if repeat>=0: samples[f'{variant}/{backend}'].append(value['elapsed_ns']/1e9)
        row = dict(compiler=compiler, opt='O2')
        for key, values in samples.items():
            median=statistics.median(values)
            row[key]=dict(samples=values,median=median,spread_percent=100*(max(values)-min(values))/median)
        result['matrix'].append(row); save()
        print('O2 timings complete:', compiler, flush=True)
    result['status'] = 'completed'
except BaseException as error:
    result.update(status='failed', error=repr(error))
    raise
finally:
    save()
