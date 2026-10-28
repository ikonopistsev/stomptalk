#!/usr/bin/env python3
"""Resolve short-case regressions; measure branches, top five, fresh PGO and GNU time."""
from pathlib import Path
import hashlib, json, os, re, statistics, subprocess, time

H=Path(__file__).resolve().parent
ROOT=H.parents[2]
FIX=ROOT/'artifacts/backend-redesign/2026-10-28'
BASE=H/'build/20261028T171057-final'
OUT=H/'measurements';OUT.mkdir(exist_ok=True)
CLANG='/usr/lib/llvm/23/bin/clang++'
original=dict(consumed=838,completed=10,headers=35,body_bytes=67,connected=1,json=1)
r=dict(status='running',cpu=4,backend=3,commands=[],rechecks=[],counters=[],profiles=[],pgo=[],times=[],sizes=[])
def save(): (OUT/'measurements.json').write_text(json.dumps(r,indent=2)+'\n')
def command(label,args,pin=True):
    args=list(map(str,args));start=time.monotonic()
    def affinity(): os.sched_setaffinity(0,{4})
    p=subprocess.run(args,capture_output=True,text=True,env=dict(os.environ,LC_ALL='C'),
                     preexec_fn=affinity if pin else None)
    record=dict(label=label,args=args,exit=p.returncode,seconds=time.monotonic()-start)
    r['commands'].append(record)
    with (OUT/'commands.jsonl').open('a') as f:
        f.write(json.dumps(dict(record,stdout=p.stdout,stderr=p.stderr))+'\n')
    save()
    if p.returncode: raise RuntimeError(label+': '+p.stderr[-3000:]+p.stdout[-1000:])
    return p.stdout
def stats(v):
    m=statistics.median(v)
    return dict(samples=v,median=m,spread_percent=(max(v)-min(v))*100/m)
def check(out,count,expected):
    x=json.loads(out)
    assert not x['error'] and not x['short_read'] and x['iterations']==count,x
    for k,n in expected.items(): assert x['body_bytes' if k=='body' else k]==n*count,x
    return x['elapsed_ns']/1e9
def probe(label,binary,path,count=1000000,backend=3,plan='whole',expected=original):
    return check(command(label,[binary,path,plan,count,backend]),count,expected)

try:
    # Only scenarios showing >1.5% loss need a longer control; original samples stay intact.
    matrix=json.loads((H/'runs/20261028T171057-final/run.json').read_text())
    cases=json.loads((FIX/'cases.json').read_text())
    for s in matrix['scenarios']:
        if s['after']['median']/s['before']['median']<=1.015: continue
        c,o,name=s['compiler'],s['opt'],s['name'];case=cases[name]
        path=FIX/'fixtures'/(name+'.bin')
        assert hashlib.sha256(path.read_bytes()).hexdigest()==case['sha256']
        count=max(2000,int(s['iterations']*.30/s['before']['median']))
        values={v:[] for v in ('before','after')}
        for repeat in range(-1,7):
            for v in (('before','after') if repeat%2 else ('after','before')):
                t=probe(f'recheck-{c}-{o}-{name}-{v}-{repeat}',BASE/f'{c}-{o}-{v}'/'probe',
                        path,count,plan=case['plan'],expected=case['expected'])
                if repeat>=0:values[v].append(t)
        r['rechecks'].append(dict(compiler=c,opt=o,name=name,iterations=count,
                                  **{k:stats(v) for k,v in values.items()}));save()
        print('Recheck:',c,o,name,round(100*(statistics.median(values['after'])/statistics.median(values['before'])-1),2),flush=True)

    events='{cpu_core/cycles/u,cpu_core/instructions/u,cpu_core/branches/u,cpu_core/branch-misses/u}'
    for c in ('clang23','gcc16'):
        for o in ('Os','O2','O3'):
            for repeat in range(3):
                for v in (('before','after') if repeat%2 else ('after','before')):
                    tag=f'{c}-{o}-{v}-{repeat}';csv=OUT/(tag+'.stat')
                    out=command('stat-'+tag,['perf','stat','-x',';','-o',csv,'-e',events,
                        '--',BASE/f'{c}-{o}-{v}'/'probe',FIX/'fixtures/original.bin','whole',1000000,3])
                    check(out,1000000,original)
                    r['counters'].append(dict(compiler=c,opt=o,variant=v,repeat=repeat,raw=csv.read_text()));save()
            for v in ('before','after'):
                tag=f'{c}-{o}-{v}';data=OUT/(tag+'.data')
                out=command('record-'+tag,['perf','record','-q','-e','cycles:u','-F','997','-o',data,
                    '--',BASE/tag/'probe',FIX/'fixtures/original.bin','whole',10000000,3])
                check(out,10000000,original)
                report=command('report-'+tag,['perf','report','-i',data,'--stdio','--no-children','--percent-limit','0.5','--sort','symbol'])
                (OUT/(tag+'.perf.txt')).write_text('\n'.join(line.rstrip() for line in report.splitlines())+'\n')
                top=[]
                for line in report.splitlines():
                    match=re.match(r'\s*([0-9.]+)%\s+\[.\]\s+(.+)',line)
                    if match and len(top)<5:
                        symbol=re.sub(r'\s+-\s+-\s*$','',match[2]).rstrip()
                        top.append(dict(percent=float(match[1]),symbol=symbol))
                r['profiles'].append(dict(compiler=c,opt=o,variant=v,top5=top));save()
            print('Counters and profile:',c,o,flush=True)

    binaries={}
    for o in ('O2','O3'):
        for v in ('before','after'):
            dest=H/'build'/('pgo-'+o)/'use' if v=='after' else ROOT/'build-pgo'/o/'use'
            binary=H/'build'/f'probe-{o}-{v}-pgo'
            command(f'link-{o}-{v}-pgo',[CLANG,'-'+o,'-DNDEBUG','-std=c++14','-DSTOMPTALK_STATIC',
                '-I'+str(ROOT/'include'),FIX/'probe.cpp',dest/'libstomptalk.a','-o',binary],False)
            binaries[o,v,'pgo']=binary
            binaries[o,v,'plain']=BASE/f'clang23-{o}-{v}'/'probe'
            size=command(f'size-{o}-{v}-pgo',['size','-A',binary],False)
            r['sizes'].append(dict(opt=o,variant=v,pgo=True,output=size))
        cells=[(v,p) for v in ('before','after') for p in ('plain','pgo')]
        values={f'{v}/{p}':[] for v,p in cells}
        for repeat in range(-1,5):
            off=repeat%len(cells)
            for v,p in cells[off:]+cells[:off]:
                t=probe(f'pgo-{o}-{v}-{p}-{repeat}',binaries[o,v,p],FIX/'fixtures/original.bin')
                if repeat>=0:values[f'{v}/{p}'].append(t)
        r['pgo'].append(dict(opt=o,**{k:stats(v) for k,v in values.items()}));save()

        # Profile-use is also checked on held-out shape/fragmentation cases.
        scenario=[]
        for name,case in cases.items():
            path=FIX/'fixtures'/(name+'.bin')
            source=next(s for s in matrix['scenarios'] if s['compiler']=='clang23' and s['opt']==o and s['name']==name)
            count=max(2000,int(source['iterations']*.05/source['after']['median']))
            values={v:[] for v in ('plain','pgo')}
            for repeat in range(-1,3):
                for p in (('plain','pgo') if repeat%2 else ('pgo','plain')):
                    t=probe(f'profile-case-{o}-{p}-{name}-{repeat}',binaries[o,'after',p],path,count,
                            plan=case['plan'],expected=case['expected'])
                    if repeat>=0:values[p].append(t)
            scenario.append(dict(name=name,iterations=count,**{k:stats(v) for k,v in values.items()}))
        r.setdefault('pgo_scenarios',[]).append(dict(opt=o,scenarios=scenario));save()

        values={f'{v}/{p}':[] for v,p in cells}
        for repeat in range(-1,3):
            off=repeat%len(cells)
            for v,p in cells[off:]+cells[:off]:
                if p=='plain':dest=BASE/f'clang23-{o}-{v}'
                elif v=='after':dest=H/'build'/('pgo-'+o)/'use'
                else:dest=ROOT/'build-pgo'/o/'use'
                label=f'time-{o}-{v}-{p}-{repeat}';timing=OUT/(label+'.time')
                out=command(label,['/usr/bin/time','-f','%e %U %S','-o',timing,dest/'purestomp',0,10000000])
                assert out.splitlines()[-1]=='connected 10000000, frame 100000000, json 10000000, total 670000000'
                if repeat>=0:values[f'{v}/{p}'].append(list(map(float,timing.read_text().split())))
        r['times'].append(dict(opt=o,**{k:dict(samples=v,real=stats([x[0] for x in v]),
            user=stats([x[1] for x in v])) for k,v in values.items()}));save()
        print('PGO and GNU time:',o,flush=True)
    r['status']='completed'
finally: save()
