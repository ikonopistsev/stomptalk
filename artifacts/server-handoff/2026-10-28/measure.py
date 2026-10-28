#!/usr/bin/env python3
"""Pinned full-parser controls after cleanup; compiler/profile setup in verify.py."""
from pathlib import Path
import hashlib, json, os, statistics, subprocess, time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
OLD = ROOT/'artifacts/pgo-matrix/2026-10-28/runs/20261028T071754232573Z'
FIX = ROOT/'artifacts/backend-redesign/2026-10-28'
CXX = '/usr/lib/llvm/23/bin/clang++'
CPU = 4
r = dict(status='running',cpu=CPU,backend=3,commands=[],matrix=[],scenarios=[],times=[],profiles=[],sizes=[])

def save(): (HERE/'measurements.json').write_text(json.dumps(r,indent=2)+'\n')
def command(label,args,pin=False):
    args=list(map(str,args));start=time.monotonic()
    def affinity(): os.sched_setaffinity(0,{CPU})
    with (HERE/(label+'.stdout')).open('w') as out,(HERE/(label+'.stderr')).open('w') as err:
        p=subprocess.run(args,stdout=out,stderr=err,env=dict(os.environ,LC_ALL='C'),preexec_fn=affinity if pin else None)
    r['commands'].append(dict(label=label,args=args,exit=p.returncode,seconds=time.monotonic()-start));save()
    if p.returncode: raise RuntimeError(label+': '+(HERE/(label+'.stderr')).read_text()[-2000:])
    return (HERE/(label+'.stdout')).read_text()
def stats(v):
    m=statistics.median(v)
    return dict(samples=v,median=m,spread_percent=(max(v)-min(v))*100/m)
def probe(label,binary,path,plan,count,expected):
    out=json.loads(command(label,[binary,path,plan,count,3],True))
    assert not out['error'] and not out['short_read'] and out['iterations']==count,out
    for k,v in expected.items(): assert out['body_bytes' if k=='body' else k]==v*count,out
    return out['elapsed_ns']/1e9

try:
    builds={}
    for opt in ('O2','O3'):
        for version in ('before','after'):
            for variant in ('plain','pgo'):
                tag=f'{opt}-{version}-{variant}'
                dest=HERE/'build'/tag;dest.mkdir(exist_ok=True)
                if version=='before': lib=OLD/'build'/('clang23-'+opt)/('plain' if variant=='plain' else 'pgo')/'libstomptalk.a'
                else: lib=(HERE/'build'/('clang-'+opt) if variant=='plain' else ROOT/'build-pgo'/opt/'use')/'libstomptalk.a'
                binary=dest/'probe';builds[opt,version,variant]=binary
                command(tag+'-probe-build',[CXX,'-'+opt,'-DNDEBUG','-std=c++14','-DSTOMPTALK_STATIC',
                    '-I'+str(ROOT/'include'),FIX/'probe.cpp',lib,'-o',binary])
                size=command(tag+'-size',['size','-A',binary]);r['sizes'].append(dict(tag=tag,output=size))
    original=dict(consumed=838,completed=10,headers=35,body_bytes=67,connected=1,json=1)
    for opt in ('O2','O3'):
        entries=[(v,p) for v in ('before','after') for p in ('plain','pgo')]
        values={x:[] for x in entries}
        for repeat in range(-1,5):
            for version,variant in entries[repeat%4:]+entries[:repeat%4]:
                seconds=probe(f'{opt}-{version}-{variant}-pure-{repeat}',builds[opt,version,variant],
                    FIX/'fixtures/original.bin','whole',1000000,original)
                if repeat>=0: values[version,variant].append(seconds)
        for (version,variant),v in values.items():
            r['matrix'].append(dict(opt=opt,version=version,variant=variant,**stats(v)))
        print('Probe complete:',opt,flush=True);save()

    cases=json.loads((FIX/'cases.json').read_text())
    for opt in ('O2','O3'):
        for name,case in cases.items():
            path=FIX/'fixtures'/(name+'.bin')
            assert hashlib.sha256(path.read_bytes()).hexdigest()==case['sha256']
            pilot=probe(opt+'-calibrate-'+name,builds[opt,'after','plain'],path,case['plan'],2000,case['expected'])
            count=max(2000,min(3000000,int(.03/(pilot/2000))))
            values={v:[] for v in ('plain','pgo')}
            for repeat in range(-1,3):
                for variant in (('plain','pgo') if repeat%2 else ('pgo','plain')):
                    elapsed=probe(f'{opt}-{variant}-{name}-{repeat}',builds[opt,'after',variant],path,case['plan'],count,case['expected'])
                    if repeat>=0: values[variant].append(elapsed)
            r['scenarios'].append(dict(opt=opt,name=name,iterations=count,**{k:stats(v) for k,v in values.items()}));save()
        print('Scenarios complete:',opt,flush=True)

    for opt in ('O2','O3'):
        values={v:[] for v in ('plain','pgo')}
        for repeat in range(-1,3):
            for variant in (('plain','pgo') if repeat%2 else ('pgo','plain')):
                dest=HERE/'build'/('clang-'+opt) if variant=='plain' else ROOT/'build-pgo'/opt/'use'
                label=f'{opt}-{variant}-time-{repeat}';timing=HERE/(label+'.time')
                out=command(label,['/usr/bin/time','-f','%e %U %S','-o',timing,dest/'purestomp',0,10000000],True)
                assert out.splitlines()[-1]=='connected 10000000, frame 100000000, json 10000000, total 670000000'
                if repeat>=0: values[variant].append(list(map(float,timing.read_text().split())))
        r['times'].append(dict(opt=opt,**{k:dict(samples=v,real=stats([x[0] for x in v]),user=stats([x[1] for x in v])) for k,v in values.items()}));save()
        print('GNU time complete:',opt,flush=True)

    for opt in ('O2','O3'):
        for variant in ('plain','pgo'):
            tag=opt+'-'+variant;data=HERE/(tag+'.data')
            command(tag+'-perf-record',['perf','record','-q','-e','cycles:u','-F','997','-o',data,
                '--',builds[opt,'after',variant],FIX/'fixtures/original.bin','whole',10000000,3],True)
            out=command(tag+'-perf-report',['perf','report','-i',data,'--stdio','--no-children',
                '--percent-limit','0.5','--sort','symbol'])
            r['profiles'].append(dict(opt=opt,variant=variant,report=out));save()
    def code_size(source):
        files=[p for d in ('src','include') for p in (source/d).rglob('*') if p.is_file()]
        return dict(files=len(files),lines=sum(len(p.read_text().splitlines()) for p in files))
    r['source_size']={'before':code_size(OLD/'source'),'after':code_size(ROOT)}
    r['status']='completed'
finally: save()
