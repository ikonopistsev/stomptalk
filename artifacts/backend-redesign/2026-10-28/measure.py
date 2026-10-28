#!/usr/bin/env python3
"""Paired complete-parser measurements on P CPU 4, with frozen inputs and raw logs."""
from pathlib import Path
from datetime import datetime, timezone
import argparse, hashlib, json, os, resource, shutil, statistics, subprocess, time
H=Path(__file__).resolve().parent;ROOT=H.parents[2]
p=argparse.ArgumentParser(description=__doc__);p.add_argument('--mode',choices=['pilot','full'],default='full');a=p.parse_args()
OUT=H/'runs'/datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S%fZ');OUT.mkdir(parents=True)
r=dict(status='building',mode=a.mode,cpu=4,commands=[],matrix=[],scenarios=[],defaults=[],profiles=[])
COMP={'gcc16':('/usr/bin/g++-16','/usr/bin/gcc-16'),'clang23':('/usr/lib/llvm/23/bin/clang++','/usr/lib/llvm/23/bin/clang')}
def save():(OUT/'run.json').write_text(json.dumps(r,indent=2)+'\n')
def command(label,args,pin=False,optional=False):
 args=list(map(str,args));t=time.monotonic();ru=resource.getrusage(resource.RUSAGE_CHILDREN)
 with (OUT/(label+'.stdout')).open('w') as stdout,(OUT/(label+'.stderr')).open('w') as stderr:
  proc=subprocess.Popen(args,stdout=stdout,stderr=stderr,env=dict(os.environ,LC_ALL='C'),preexec_fn=(lambda:os.sched_setaffinity(0,{4})) if pin else None)
  affinity=sorted(os.sched_getaffinity(proc.pid)) if pin else None
  if pin:assert affinity==[4]
  code=proc.wait()
 usage=resource.getrusage(resource.RUSAGE_CHILDREN)
 r['commands'].append(dict(label=label,args=args,exit=code,wall_seconds=time.monotonic()-t,cpu_seconds=usage.ru_utime+usage.ru_stime-ru.ru_utime-ru.ru_stime,affinity=affinity));save()
 text=(OUT/(label+'.stdout')).read_text()
 if code and not optional:raise RuntimeError(label+': '+(OUT/(label+'.stderr')).read_text()[-1000:]+text[-1000:])
 return text if not code else None
def summary(v):
 m=statistics.median(v);return dict(samples=v,median=m,spread_percent=100*(max(v)-min(v))/m)
print(OUT,flush=True);save()
try:
 src=OUT/'source';src.mkdir()
 for d in ('src','include','test','cmake','protocol'):shutil.copytree(ROOT/d,src/d)
 for n in ('CMakeLists.txt','stomptalkgen.js','package.json','package-lock.json'):shutil.copy2(ROOT/n,src/n)
 r['source_sha256']={str(q.relative_to(src)):hashlib.sha256(q.read_bytes()).hexdigest() for q in src.rglob('*') if q.is_file()}
 r['cpu_topology']=command('topology',['lscpu','-e=CPU,CORE,SOCKET,MAXMHZ'])
 opts=['O2'] if a.mode=='pilot' else ['Os','O2','O3'];builds={}
 for c,(cxx,cc) in COMP.items():
  r[c+'_version']=command(c+'-version',[cxx,'--version']).splitlines()[0]
  for o in opts:
   b=OUT/'build'/f'{c}-{o}-after'
   command(f'{c}-{o}-configure',['cmake','-G','Ninja','-S',src,'-B',b,'-DCMAKE_BUILD_TYPE=Release','-DCMAKE_CXX_COMPILER='+cxx,'-DCMAKE_C_COMPILER='+cc,'-DCMAKE_CXX_FLAGS_RELEASE=-'+o+' -DNDEBUG','-DCMAKE_C_FLAGS_RELEASE=-'+o+' -DNDEBUG','-DSTOMPTALK_BUILD_TESTS=ON'])
   command(f'{c}-{o}-build',['cmake','--build',b,'-j','4'])
   command(f'{c}-{o}-tests',['ctest','--test-dir',b,'--output-on-failure'])
   command(f'{c}-{o}-probe',[cxx,'-'+o,'-DNDEBUG','-std=c++14','-DSTOMPTALK_STATIC','-I'+str(src/'include'),H/'probe.cpp',b/'libstomptalk.a','-o',b/'probe'])
   builds[c,o,'after']=b;builds[c,o,'before']=H/'build'/f'{c}-{o}-before'
   for v in ('before','after'):command(f'{c}-{o}-{v}-size',['size','-A',builds[c,o,v]/'probe'])
  print('built/tested',c,flush=True)
 def probe(c,o,v,b,path,plan,count,expect,label):
  x=json.loads(command(label,[builds[c,o,v]/'probe',path,plan,count,b],True));assert not x['error'] and not x['short_read'] and x['iterations']==count,x
  assert all(x['body_bytes' if k=='body' else k]==n*count for k,n in expect.items()),x
  return x['elapsed_ns']/1e9
 expected=dict(consumed=838,completed=10,headers=35,body_bytes=67,connected=1,json=1)
 cases=json.loads((H/'cases.json').read_text());cells=[(v,b) for b in (2,3,4) for v in ('before','after')]
 r['status']='measuring';save()
 for c in COMP:
  for o in opts:
   vals={f'{v}/{b}':[] for v,b in cells}
   for rep in range(-1,5):
    off=rep%len(cells)
    for v,b in cells[off:]+cells[:off]:
     t=probe(c,o,v,b,H/'fixtures/original.bin','whole',1000000,expected,f'pure-{c}-{o}-{v}-{b}-{rep}')
     if rep>=0:vals[f'{v}/{b}'].append(t)
   row=dict(compiler=c,opt=o,**{k:summary(v) for k,v in vals.items()});r['matrix'].append(row);save()
   print('matrix',c,o,{str(b):round(100*(row[f'after/{b}']['median']/row[f'before/{b}']['median']-1),2) for b in (2,3,4)},flush=True)
   for name,case in cases.items():
    path=H/'fixtures'/(name+'.bin')
    assert hashlib.sha256(path.read_bytes()).hexdigest()==case['sha256']
    t=probe(c,o,'before',3,path,case['plan'],2000,case['expected'],f'calibrate-{c}-{o}-{name}')
    count=max(2000,min(3000000,int(.025/(t/2000))));vals={f'{v}/{b}':[] for v,b in cells}
    for rep in range(-1,3):
     off=rep%len(cells)
     for v,b in cells[off:]+cells[:off]:
      t=probe(c,o,v,b,path,case['plan'],count,case['expected'],f'case-{c}-{o}-{name}-{v}-{b}-{rep}')
      if rep>=0:vals[f'{v}/{b}'].append(t*1e9/(count*case['expected']['completed']))
    r['scenarios'].append(dict(compiler=c,opt=o,name=name,iterations=count,**{k:summary(v) for k,v in vals.items()}));save()
   print('scenarios complete',c,o,flush=True)
 if a.mode=='full':
  for c in COMP:
   for rep in range(-1,3):
    for v in (('before','after') if rep%2==0 else ('after','before')):
     label=f'default-{c}-{v}-{rep}';timer=OUT/(label+'.json')
     s=command(label,['/usr/bin/time','-f','{"real":%e,"user":%U,"sys":%S}','-o',timer,builds[c,'O2',v]/'purestomp',0,10000000],True)
     assert s.splitlines()[-1]=='connected 10000000, frame 100000000, json 10000000, total 670000000'
     if rep>=0:r['defaults'].append(dict(compiler=c,variant=v,repeat=rep,**json.loads(timer.read_text())));save()
   for o in opts:
    for v,b in cells:
     label=f'profile-{c}-{o}-{v}-{b}';data=OUT/(label+'.data')
     ok=command(label+'-record',['perf','record','-e','cycles:u','-F','997','-o',data,'--',builds[c,o,v]/'probe',H/'fixtures/original.bin','whole',1000000,b],True,True)
     report=command(label+'-report',['perf','report','--stdio','--no-children','--percent-limit','1','--sort','symbol','-i',data],optional=True) if ok is not None else None
     r['profiles'].append(dict(compiler=c,opt=o,variant=v,backend=b,label=label,success=report is not None));save()
 r['status']='completed'
except BaseException as e:r.update(status='failed',error=repr(e));raise
finally:save()
