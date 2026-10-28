#!/usr/bin/env python3
"""Validate cleanup, portable PGO, build variants and installed C99 consumption."""
from pathlib import Path
import hashlib, json, os, shutil, subprocess, time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
CLANG = Path('/usr/lib/llvm/23/bin')
report = {'commands': [], 'status': 'running'}

def run(label, args, env=None):
    start = time.monotonic()
    with (HERE / (label + '.log')).open('w') as out:
        proc = subprocess.run(list(map(str, args)), stdout=out, stderr=subprocess.STDOUT,
            env=dict(os.environ, LC_ALL='C', ASAN_OPTIONS='detect_leaks=0',
                     UBSAN_OPTIONS='halt_on_error=1', **(env or {})))
    report['commands'].append(dict(label=label, args=list(map(str, args)), exit=proc.returncode,
        seconds=time.monotonic() - start))
    (HERE / 'verification.json').write_text(json.dumps(report, indent=2) + '\n')
    if proc.returncode:
        raise RuntimeError(label + ': ' + (HERE / (label + '.log')).read_text()[-3000:])

def build(label, source=ROOT, compiler='clang', opt='O3', extra=()):
    dest = HERE / 'build' / label
    cc, cxx = (CLANG/'clang', CLANG/'clang++') if compiler == 'clang' else ('/usr/bin/gcc-16','/usr/bin/g++-16')
    run(label+'-configure', ['cmake','-G','Ninja','-S',source,'-B',dest,
        '-DCMAKE_C_COMPILER='+str(cc), '-DCMAKE_CXX_COMPILER='+str(cxx),
        '-DCMAKE_BUILD_TYPE=Release','-DCMAKE_C_FLAGS_RELEASE=-'+opt+' -DNDEBUG',
        '-DCMAKE_CXX_FLAGS_RELEASE=-'+opt+' -DNDEBUG','-DSTOMPTALK_BUILD_TESTS=ON',*extra])
    run(label+'-build', ['cmake','--build',dest,'-j','4'])
    run(label+'-test', ['ctest','--test-dir',dest,'--output-on-failure'])
    shutil.copy2(dest/'Testing/Temporary/LastTest.log',HERE/(label+'-test-detail.log'))
    print('Verified:',label,flush=True)
    return dest

try:
    for compiler in ('clang','gcc'):
        for opt in ('O2','O3'):
            build(compiler+'-'+opt,compiler=compiler,opt=opt)
    build('debug',extra=['-DCMAKE_BUILD_TYPE=Debug'])
    build('sse2-only',extra=['-DSTOMPTALK_BUILD_AVX2=OFF'])
    build('no-simd',extra=['-DSTOMPTALK_BUILD_SSE2=OFF'])

    # A different source root and a different profile path, not a reused cache.
    relocated = HERE/'relocated'
    relocated.mkdir(exist_ok=True)
    for name in ('src','include','test','cmake','fuzz'):
        shutil.copytree(ROOT/name,relocated/name,dirs_exist_ok=True)
    shutil.copy2(ROOT/'CMakeLists.txt',relocated/'CMakeLists.txt')
    shutil.copy2(ROOT/'pgo/clang23.profdata',relocated/'portable.profdata')
    profile = '-DSTOMPTALK_PGO_PROFILE='+str(relocated/'portable.profdata')
    for opt in ('O2','O3'):
        build('relocated-'+opt,source=relocated,opt=opt,extra=[profile])
    shared = build('relocated-shared',source=relocated,extra=[profile,
        '-DSTOMPTALK_LIBRARY_STATIC=OFF','-DSTOMPTALK_LIBRARY_INSTALL=ON'])
    prefix = HERE/'build/install'
    run('shared-install',['cmake','--install',shared,'--prefix',prefix])
    consumer = HERE/'build/consumer-source';consumer.mkdir(exist_ok=True)
    shutil.copy2(ROOT/'test/purestomp.c',consumer/'main.c')
    (consumer/'CMakeLists.txt').write_text('''cmake_minimum_required(VERSION 3.10)
project(consumer C)
find_package(stomptalk 2 REQUIRED CONFIG)
add_executable(consumer main.c)
set_property(TARGET consumer PROPERTY C_STANDARD 99)
target_link_libraries(consumer PRIVATE stomptalk::stomptalk)
''')
    consumer_build = HERE/'build/consumer'
    run('consumer-configure',['cmake','-S',consumer,'-B',consumer_build,
        '-DCMAKE_C_COMPILER='+str(CLANG/'clang'),'-DCMAKE_PREFIX_PATH='+str(prefix)])
    run('consumer-build',['cmake','--build',consumer_build])
    run('consumer-run',[consumer_build/'consumer','0','10000'])

    sanitized = build('sanitize', opt='O1', extra=['-DSTOMPTALK_BUILD_FUZZ=ON'])
    corpus = HERE/'fuzz-corpus';corpus.mkdir(exist_ok=True)
    for folder in ('parser','v2'):
        for p in (ROOT/'fuzz/corpus'/folder).iterdir():
            shutil.copy2(p,corpus/p.name)
    run('manual-fuzz',[sanitized/'fuzz_stomptalk_v2',corpus,
        '-max_total_time=30','-max_len=8192','-seed=1801'])
    report['source_sha256'] = {str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest()
        for directory in ('src','include') for p in (ROOT/directory).rglob('*') if p.is_file()}
    report['status'] = 'completed'
finally:
    (HERE/'verification.json').write_text(json.dumps(report,indent=2)+'\n')
