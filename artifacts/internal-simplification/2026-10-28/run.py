#!/usr/bin/env python3
"""A/B frozen parser sources, including all backends and useful output checks."""
from pathlib import Path
from datetime import datetime, timezone
import argparse, hashlib, json, os, shutil, statistics, subprocess, time

H=Path(__file__).resolve().parent
ROOT=H.parents[2]
FIX=ROOT/'artifacts/backend-redesign/2026-10-28'
p=argparse.ArgumentParser(description=__doc__)
p.add_argument('--pilot',action='store_true')
p.add_argument('--label',default='run')
a=p.parse_args()
OUT=H/'runs'/(datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S')+'-'+a.label)
OUT.mkdir(parents=True)
buildroot=H/'build'/OUT.name
compilers={'clang23':('/usr/lib/llvm/23/bin/clang++','/usr/lib/llvm/23/bin/clang'),
           'gcc16':('/usr/bin/g++-16','/usr/bin/gcc-16')}
opts=('O2',) if a.pilot else ('Os','O2','O3')
backends=(3,4) if a.pilot else (2,3,4)
r=dict(status='building',cpu=4,matrix=[],scenarios=[],sizes=[],commands=[])
def save(): (OUT/'run.json').write_text(json.dumps(r,indent=2)+'\n')
def cmd(label,args,pin=False,env=None):
    args=list(map(str,args));start=time.monotonic()
    def affinity(): os.sched_setaffinity(0,{4})
    q=subprocess.run(args,capture_output=True,text=True,env=dict(os.environ,LC_ALL='C',**(env or {})),
        preexec_fn=affinity if pin else None)
    record=dict(label=label,args=args,exit=q.returncode,seconds=time.monotonic()-start)
    r['commands'].append(record)
    with (OUT/'commands.jsonl').open('a') as f:
        f.write(json.dumps(dict(record,stdout=q.stdout,stderr=q.stderr))+'\n')
    save()
    if q.returncode: raise RuntimeError(label+': '+q.stderr[-2500:]+q.stdout[-2500:])
    return q.stdout
def stats(x):
    m=statistics.median(x)
    return dict(samples=x,median=m,spread_percent=100*(max(x)-min(x))/m)
def probe(label,binary,path,plan,count,backend,expected):
    x=json.loads(cmd(label,[binary,path,plan,count,backend],True))
    assert not x['error'] and not x['short_read'] and x['iterations']==count,x
    for k,n in expected.items(): assert x['body_bytes' if k=='body' else k]==n*count,x
    return x['elapsed_ns']/1e9
try:
    after=OUT/'after';after.mkdir()
    for d in ('src','include','test','cmake','fuzz','protocol'):shutil.copytree(ROOT/d,after/d)
    for f in ('CMakeLists.txt','stomptalkgen.js','package.json','package-lock.json'):shutil.copy2(ROOT/f,after/f)
    r['source_sha256']={v:{str(f.relative_to(s)):hashlib.sha256(f.read_bytes()).hexdigest()
        for f in s.rglob('*') if f.is_file()} for v,s in [('before',H/'before'),('after',after)]}
    print(OUT,flush=True)
    for compiler,(cxx,cc) in compilers.items():
        for opt in opts:
            for v,source in [('before',H/'before'),('after',after)]:
                tag=f'{compiler}-{opt}-{v}';b=buildroot/tag
                cmd(tag+'-configure',['cmake','-G','Ninja','-S',source,'-B',b,'-DCMAKE_BUILD_TYPE=Release',
                    '-DCMAKE_CXX_COMPILER='+cxx,'-DCMAKE_C_COMPILER='+cc,'-DCMAKE_CXX_FLAGS_RELEASE=-'+opt+' -DNDEBUG',
                    '-DCMAKE_C_FLAGS_RELEASE=-'+opt+' -DNDEBUG','-DSTOMPTALK_BUILD_TESTS=ON'])
                cmd(tag+'-build',['cmake','--build',b,'-j','4'])
                cmd(tag+'-test',['ctest','--test-dir',b,'--output-on-failure'])
                shutil.copy2(b/'Testing/Temporary/LastTest.log',OUT/(tag+'-test.log'))
                cmd(tag+'-probe',[cxx,'-'+opt,'-DNDEBUG','-std=c++14','-DSTOMPTALK_STATIC','-I'+str(source/'include'),
                    FIX/'probe.cpp',b/'libstomptalk.a','-o',b/'probe'])
                r['sizes'].append(dict(compiler=compiler,opt=opt,variant=v,output=cmd(tag+'-size',['size','-A',b/'probe'])))
        print('Built:',compiler,flush=True)
    r['status']='measuring';save()
    expected=dict(consumed=838,completed=10,headers=35,body_bytes=67,connected=1,json=1)
    cases=json.loads((FIX/'cases.json').read_text())
    for compiler in compilers:
        for opt in opts:
            cells=[(v,b) for b in backends for v in ('before','after')]
            values={f'{v}/{b}':[] for v,b in cells}
            for repeat in range(-1,5):
                off=repeat%len(cells)
                for v,b in cells[off:]+cells[:off]:
                    elapsed=probe(f'{compiler}-{opt}-{v}-{b}-pure-{repeat}',buildroot/f'{compiler}-{opt}-{v}'/'probe',
                        FIX/'fixtures/original.bin','whole',1000000,b,expected)
                    if repeat>=0: values[f'{v}/{b}'].append(elapsed)
            r['matrix'].append(dict(compiler=compiler,opt=opt,**{k:stats(x) for k,x in values.items()}));save()
            print('Pure:',compiler,opt,{k:round(10/statistics.median(x),2) for k,x in values.items()},flush=True)
            for name,case in cases.items():
                path=FIX/'fixtures'/(name+'.bin')
                assert hashlib.sha256(path.read_bytes()).hexdigest()==case['sha256']
                pilot=probe(f'{compiler}-{opt}-calibrate-{name}',buildroot/f'{compiler}-{opt}-before'/'probe',
                    path,case['plan'],2000,3,case['expected'])
                count=max(2000,min(3000000,int(.03/(pilot/2000))))
                values={v:[] for v in ('before','after')}
                for repeat in range(-1,3):
                    for v in (('before','after') if repeat%2 else ('after','before')):
                        elapsed=probe(f'{compiler}-{opt}-{v}-{name}-{repeat}',buildroot/f'{compiler}-{opt}-{v}'/'probe',
                            path,case['plan'],count,3,case['expected'])
                        if repeat>=0: values[v].append(elapsed)
                r['scenarios'].append(dict(compiler=compiler,opt=opt,name=name,iterations=count,
                    **{k:stats(x) for k,x in values.items()}));save()
            print('Scenarios:',compiler,opt,flush=True)
    r['status']='completed'
finally: save()
