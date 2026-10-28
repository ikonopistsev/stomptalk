#!/usr/bin/env python3
"""Assert/ISA/sanitizer checks, fresh PGO, relocation and installed C99 consumer."""
from pathlib import Path
import hashlib, json, os, shutil, subprocess, time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
LLVM = Path('/usr/lib/llvm/23/bin')
OUT = HERE/'validation'
OUT.mkdir(exist_ok=True)
report = dict(status='running', commands=[])

def save(): (OUT/'verification.json').write_text(json.dumps(report, indent=2)+'\n')
def run(label, args, env=None):
    start = time.monotonic()
    with (OUT/(label+'.log')).open('w') as log:
        p = subprocess.run(list(map(str,args)), stdout=log, stderr=subprocess.STDOUT,
            env=dict(os.environ, LC_ALL='C', ASAN_OPTIONS='detect_leaks=0:halt_on_error=1',
                     UBSAN_OPTIONS='halt_on_error=1', **(env or {})))
    log_path=OUT/(label+'.log')
    log_path.write_text('\n'.join(line.rstrip() for line in log_path.read_text().splitlines())+'\n')
    report['commands'].append(dict(label=label,args=list(map(str,args)),exit=p.returncode,
                                   seconds=time.monotonic()-start))
    save()
    if p.returncode: raise RuntimeError(label+': '+(OUT/(label+'.log')).read_text()[-3000:])

def build(label, source=ROOT, opt='O3', extra=()):
    dest = HERE/'build'/label
    run(label+'-configure',['cmake','-G','Ninja','-S',source,'-B',dest,
        '-DCMAKE_C_COMPILER='+str(LLVM/'clang'),'-DCMAKE_CXX_COMPILER='+str(LLVM/'clang++'),
        '-DCMAKE_BUILD_TYPE=Release','-DCMAKE_C_FLAGS_RELEASE=-'+opt+' -DNDEBUG',
        '-DCMAKE_CXX_FLAGS_RELEASE=-'+opt+' -DNDEBUG','-DSTOMPTALK_BUILD_TESTS=ON',*extra])
    run(label+'-build',['cmake','--build',dest,'-j','4'])
    run(label+'-test',['ctest','--test-dir',dest,'--output-on-failure'])
    shutil.copy2(dest/'Testing/Temporary/LastTest.log',OUT/(label+'-test-detail.log'))
    print('Verified:',label,flush=True)
    return dest

try:
    build('final-debug',extra=['-DCMAKE_BUILD_TYPE=Debug'])
    build('final-sse2-only',extra=['-DSTOMPTALK_BUILD_AVX2=OFF'])
    build('final-no-simd',extra=['-DSTOMPTALK_BUILD_SSE2=OFF'])
    sanitized = build('final-sanitize',opt='O1',extra=['-DSTOMPTALK_BUILD_FUZZ=ON',
        '-DCMAKE_C_FLAGS_RELEASE=-O1 -g','-DCMAKE_CXX_FLAGS_RELEASE=-O1 -g'])
    corpus = HERE/'fuzz-corpus';corpus.mkdir(exist_ok=True)
    for folder in ('parser','v2'):
        for p in (ROOT/'fuzz/corpus'/folder).iterdir(): shutil.copy2(p,corpus/p.name)
    run('manual-fuzz',[sanitized/'fuzz_stomptalk_v2',corpus,
        '-max_total_time=30','-max_len=8192','-seed=1801'])
    print('Sanitizers + assertions + manual fuzz passed',flush=True)

    # Keep the preceding published profile available for before/after evidence.
    old = HERE/'previous-pgo'
    if not old.exists(): shutil.copytree(ROOT/'pgo',old)
    for opt in ('O2','O3'):
        work = HERE/'build'/('pgo-'+opt)
        run('pgo-'+opt,['ctest','-S',ROOT/'cmake/ClangPGO.cmake',
            '-DPGO_LLVM_DIR='+str(LLVM),'-DPGO_OPT='+opt,'-DPGO_WORK='+str(work),'-VV'])
        for name in ('compiler.txt','options.txt','profile.txt','source.sha256'):
            shutil.copy2(work/name,OUT/('pgo-'+opt+'-'+name))
        print('PGO generated and tested:',opt,flush=True)
    o2 = HERE/'build/pgo-O2/stomptalk.profdata'
    o3 = HERE/'build/pgo-O3/stomptalk.profdata'
    assert o2.read_bytes()==o3.read_bytes(), 'Keep separate profiles if training differs'
    shutil.copy2(o3,ROOT/'pgo/clang23.profdata')
    shutil.copy2(HERE/'build/pgo-O3/source.sha256',ROOT/'pgo/source.sha256')
    metadata = json.loads((old/'metadata.json').read_text())
    metadata.pop('source_commit',None)
    metadata['source_base_commit']='e30e2aa8b2b49daebaf07ceea3dcbccdfe8177fe'
    metadata['source_manifest']='source.sha256 (authoritative contents after internal simplification)'
    for opt in ('O2','O3'):
        work = HERE/'build'/('pgo-'+opt)
        metadata['profiles'][opt].update(sha256=hashlib.sha256(o3.read_bytes()).hexdigest(),
            bytes=o3.stat().st_size,summary=(work/'profile.txt').read_text(),
            options=(work/'options.txt').read_text().strip())
    (ROOT/'pgo/metadata.json').write_text(json.dumps(metadata,indent=2)+'\n')

    relocated = HERE/'build/relocated-source'
    relocated.mkdir(exist_ok=True)
    for name in ('src','include','test','cmake','fuzz'):
        shutil.copytree(ROOT/name,relocated/name,dirs_exist_ok=True)
    shutil.copy2(ROOT/'CMakeLists.txt',relocated/'CMakeLists.txt')
    shutil.copy2(o3,relocated/'portable.profdata')
    profile = '-DSTOMPTALK_PGO_PROFILE='+str(relocated/'portable.profdata')
    for opt in ('O2','O3'): build('relocated-'+opt,source=relocated,opt=opt,extra=[profile])
    shared = build('relocated-shared',source=relocated,extra=[profile,
        '-DSTOMPTALK_LIBRARY_STATIC=OFF','-DSTOMPTALK_LIBRARY_INSTALL=ON'])
    prefix = HERE/'build/install'
    run('shared-install',['cmake','--install',shared,'--prefix',prefix])
    run('shared-exports',['nm','-D','--defined-only','-C',shared/'libstomptalk.so'])
    exported=(OUT/'shared-exports.log').read_text()
    assert 'stomptalk::' not in exported,exported
    consumer=HERE/'build/consumer-source';consumer.mkdir(exist_ok=True)
    shutil.copy2(ROOT/'test/purestomp.c',consumer/'main.c')
    (consumer/'CMakeLists.txt').write_text('''cmake_minimum_required(VERSION 3.10)
project(consumer C)
find_package(stomptalk 2 REQUIRED CONFIG)
add_executable(consumer main.c)
set_property(TARGET consumer PROPERTY C_STANDARD 99)
target_link_libraries(consumer PRIVATE stomptalk::stomptalk)
''')
    b=HERE/'build/consumer'
    run('consumer-configure',['cmake','-S',consumer,'-B',b,
        '-DCMAKE_C_COMPILER='+str(LLVM/'clang'),'-DCMAKE_PREFIX_PATH='+str(prefix)])
    run('consumer-build',['cmake','--build',b])
    run('consumer-run',[b/'consumer','0','10000'])
    report['source_sha256']={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest()
        for directory in ('src','include') for p in (ROOT/directory).rglob('*') if p.is_file()}
    report['status']='completed'
finally: save()
