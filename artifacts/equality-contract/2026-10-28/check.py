#!/usr/bin/env python3
"""Check equality contract separation against the measured 5af4d3d code."""
from pathlib import Path
import hashlib,json,os,shutil,statistics,subprocess,time

H=Path(__file__).resolve().parent
ROOT=H.parents[2]
OLD=ROOT/'artifacts/internal-simplification/2026-10-28/build/20261028T171057-final'
FIX=ROOT/'artifacts/backend-redesign/2026-10-28'
LLVM=Path('/usr/lib/llvm/23/bin')
r=dict(status='running',commands=[],code=[],matrix=[])
def save():(H/'checks.json').write_text(json.dumps(r,indent=2)+'\n')
def run(label,args,pin=False,env=None):
    start=time.monotonic()
    def affinity():os.sched_setaffinity(0,{4})
    p=subprocess.run(list(map(str,args)),capture_output=True,text=True,
        env=dict(os.environ,LC_ALL='C',ASAN_OPTIONS='detect_leaks=0:halt_on_error=1',
                 UBSAN_OPTIONS='halt_on_error=1',**(env or {})),preexec_fn=affinity if pin else None)
    row=dict(label=label,args=list(map(str,args)),exit=p.returncode,seconds=time.monotonic()-start)
    r['commands'].append(row)
    with (H/'commands.jsonl').open('a') as f:f.write(json.dumps(dict(row,stdout=p.stdout,stderr=p.stderr))+'\n')
    save()
    if p.returncode:raise RuntimeError(label+': '+p.stderr[-2500:]+p.stdout[-2500:])
    return p.stdout
def build(label,cc,cxx,opt,extra=()):
    b=H/'build'/label
    run(label+'-configure',['cmake','-G','Ninja','-S',ROOT,'-B',b,
        '-DCMAKE_C_COMPILER='+str(cc),'-DCMAKE_CXX_COMPILER='+str(cxx),
        '-DCMAKE_BUILD_TYPE=Release','-DCMAKE_C_FLAGS_RELEASE=-'+opt+' -DNDEBUG',
        '-DCMAKE_CXX_FLAGS_RELEASE=-'+opt+' -DNDEBUG','-DSTOMPTALK_BUILD_TESTS=ON',*extra])
    run(label+'-build',['cmake','--build',b,'-j','4'])
    run(label+'-test',['ctest','--test-dir',b,'--output-on-failure'])
    shutil.copy2(b/'Testing/Temporary/LastTest.log',H/(label+'-test.log'))
    print('Passed:',label,flush=True)
    return b
def stats(v):
    m=statistics.median(v)
    return dict(samples=v,median=m,spread_percent=(max(v)-min(v))*100/m)
try:
    binaries={}
    for c,cc,cxx in [('clang23',LLVM/'clang',LLVM/'clang++'),('gcc16','/usr/bin/gcc-16','/usr/bin/g++-16')]:
        for opt in ('Os','O2','O3'):
            label=c+'-'+opt;b=build(label,cc,cxx,opt)
            run(label+'-probe',[cxx,'-'+opt,'-DNDEBUG','-std=c++14','-DSTOMPTALK_STATIC',
                '-I'+str(ROOT/'include'),FIX/'probe.cpp',b/'libstomptalk.a','-o',b/'probe'])
            binaries[c,opt,'before']=OLD/(label+'-after')/'probe'
            binaries[c,opt,'after']=b/'probe'
            row=dict(compiler=c,opt=opt)
            for section in ('.text','.rodata'):
                hashes={}
                for v in ('before','after'):
                    target=b/(v+section+'.bin')
                    run(label+'-'+v+section,['objcopy','-O','binary','--only-section='+section,binaries[c,opt,v],target])
                    hashes[v]=hashlib.sha256(target.read_bytes()).hexdigest()
                row[section]=dict(hashes,same=hashes['before']==hashes['after'])
            r['code'].append(row);save()
    build('debug',LLVM/'clang',LLVM/'clang++','O0',['-DCMAKE_BUILD_TYPE=Debug'])
    build('sanitize',LLVM/'clang',LLVM/'clang++','O1',['-DSTOMPTALK_BUILD_FUZZ=ON',
        '-DCMAKE_C_FLAGS_RELEASE=-O1 -g','-DCMAKE_CXX_FLAGS_RELEASE=-O1 -g'])
    for c in ('clang23','gcc16'):
        for opt in ('Os','O2','O3'):
            values={v:[] for v in ('before','after')}
            for rep in range(-1,3):
                for v in (('before','after') if rep%2 else ('after','before')):
                    d=json.loads(run(f'{c}-{opt}-{v}-{rep}',[binaries[c,opt,v],
                        FIX/'fixtures/original.bin','whole',1000000,3],True))
                    assert not d['error'] and not d['short_read'] and d['iterations']==1000000,d
                    for k,n in dict(consumed=838,completed=10,headers=35,body_bytes=67,connected=1,json=1).items():assert d[k]==n*1000000,d
                    if rep>=0:values[v].append(d['elapsed_ns']/1e9)
            r['matrix'].append(dict(compiler=c,opt=opt,**{k:stats(v) for k,v in values.items()}));save()
    if not (H/'build/previous-pgo').exists():
        shutil.copytree(ROOT/'pgo',H/'build/previous-pgo')
    for opt in ('O2','O3'):
        work=H/'build'/('pgo-'+opt)
        run('pgo-'+opt,['ctest','-S',ROOT/'cmake/ClangPGO.cmake','-DPGO_LLVM_DIR='+str(LLVM),
            '-DPGO_OPT='+opt,'-DPGO_WORK='+str(work),'-VV'])
        for f in ('profile.txt','compiler.txt','options.txt','source.sha256'):shutil.copy2(work/f,H/('pgo-'+opt+'-'+f))
        print('PGO passed:',opt,flush=True)
    o2=H/'build/pgo-O2/stomptalk.profdata';o3=H/'build/pgo-O3/stomptalk.profdata'
    assert o2.read_bytes()==o3.read_bytes()
    r['pgo_identical_to_previous']=o3.read_bytes()==(ROOT/'pgo/clang23.profdata').read_bytes()
    shutil.copy2(o3,ROOT/'pgo/clang23.profdata')
    shutil.copy2(H/'build/pgo-O3/source.sha256',ROOT/'pgo/source.sha256')
    meta=json.loads((ROOT/'pgo/metadata.json').read_text())
    for opt in ('O2','O3'):
        work=H/'build'/('pgo-'+opt)
        meta['profiles'][opt].update(sha256=hashlib.sha256(o3.read_bytes()).hexdigest(),bytes=o3.stat().st_size,
            summary=(work/'profile.txt').read_text(),options=(work/'options.txt').read_text().strip())
    meta['source_base_commit']='5af4d3d11626e08d06775c0096d47b77fb90d9e9'
    meta['source_manifest']='source.sha256 (after separating nullable views from raw equality)'
    (ROOT/'pgo/metadata.json').write_text(json.dumps(meta,indent=2)+'\n')
    source=json.loads((H/'source.json').read_text())
    assert all(hashlib.sha256((ROOT/f).read_bytes()).hexdigest()==sha for f,sha in source['files'].items())
    r['status']='completed'
finally:save()
