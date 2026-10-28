#!/usr/bin/env python3
"""Separate baseline, wire-length-only and combined header-state measurements."""
from pathlib import Path
from datetime import datetime,timezone
import argparse,hashlib,json,os,resource,shutil,statistics,subprocess,time
H=Path(__file__).resolve().parent;ROOT=H.parents[2];PREV=ROOT/'artifacts/backend-redesign/2026-10-28';BASE=PREV/'runs/20261028T054341442204Z'
p=argparse.ArgumentParser();p.add_argument('--full',action='store_true');p.add_argument('--followup',action='store_true');a=p.parse_args()
OUT=H/'runs'/datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S%fZ');OUT.mkdir(parents=True)
r=dict(status='building',cpu=4,full=a.full,followup=a.followup,commands=[],matrix=[],scenarios=[],profiles=[],defaults=[])
COMP={'gcc16':('/usr/bin/g++-16','/usr/bin/gcc-16'),'clang23':('/usr/lib/llvm/23/bin/clang++','/usr/lib/llvm/23/bin/clang')}
def save():(OUT/'run.json').write_text(json.dumps(r,indent=2)+'\n')
def cmd(label,args,pin=False,env=None):
 args=list(map(str,args));start=time.monotonic();ru=resource.getrusage(resource.RUSAGE_CHILDREN)
 with (OUT/(label+'.stdout')).open('w') as stdout,(OUT/(label+'.stderr')).open('w') as stderr:
  p=subprocess.Popen(args,stdout=stdout,stderr=stderr,env=dict(os.environ,LC_ALL='C',ASAN_OPTIONS='detect_leaks=0',UBSAN_OPTIONS='halt_on_error=1',**(env or {})),preexec_fn=(lambda:os.sched_setaffinity(0,{4})) if pin else None)
  affinity=sorted(os.sched_getaffinity(p.pid)) if pin else None
  if pin:assert affinity==[4]
  code=p.wait()
 usage=resource.getrusage(resource.RUSAGE_CHILDREN);r['commands'].append(dict(label=label,args=args,exit=code,wall_seconds=time.monotonic()-start,cpu_seconds=usage.ru_utime+usage.ru_stime-ru.ru_utime-ru.ru_stime,affinity=affinity));save()
 out=(OUT/(label+'.stdout')).read_text()
 if code:raise RuntimeError(label+': '+(OUT/(label+'.stderr')).read_text()[-1500:]+out[-1500:])
 return out
def summary(vals):
 med=statistics.median(vals);return dict(samples=vals,median=med,spread_percent=100*(max(vals)-min(vals))/med)
print(OUT,flush=True);save()
try:
 src=OUT/'source';src.mkdir()
 for d in ('src','include','test','fuzz','cmake','protocol'):shutil.copytree(ROOT/d,src/d)
 for n in ('CMakeLists.txt','stomptalkgen.js','package.json','package-lock.json'):shutil.copy2(ROOT/n,src/n)
 r['source_sha256']={str(p.relative_to(src)):hashlib.sha256(p.read_bytes()).hexdigest() for p in src.rglob('*') if p.is_file()}
 opts=['Os','O2','O3'] if a.full else ['O2'];builds={}
 def build(c,o,v,extra=(),suffix='',source=None):
  source=source or src
  label=f'{c}-{o}-{v}{suffix}';b=OUT/'build'/label;cxx,cc=COMP[c]
  cmd(label+'-config',['cmake','-G','Ninja','-S',source,'-B',b,'-DCMAKE_BUILD_TYPE=Release','-DCMAKE_CXX_COMPILER='+cxx,'-DCMAKE_C_COMPILER='+cc,'-DCMAKE_CXX_FLAGS_RELEASE=-'+o+' -DNDEBUG','-DCMAKE_C_FLAGS_RELEASE=-'+o+' -DNDEBUG','-DSTOMPTALK_BUILD_TESTS=ON','-DSTOMPTALK_EXPERIMENT_HEADER_LINE='+('ON' if v=='line' else 'OFF'),*extra])
  cmd(label+'-build',['cmake','--build',b,'-j','4']);cmd(label+'-test',['ctest','--test-dir',b,'--output-on-failure'])
  if not suffix:
   cmd(label+'-probe',[cxx,'-'+o,'-DNDEBUG','-std=c++14','-DSTOMPTALK_STATIC','-I'+str(source/'include'),PREV/'probe.cpp',b/'libstomptalk.a','-o',b/'probe'])
  return b
 for c in COMP:
  for o in opts:
   baseline=BASE/'build'/f'{c}-{o}-after'
   builds[c,o,'baseline']=baseline if (baseline/'probe').exists() else build(c,o,'baseline',source=H/'before')
   for v in ('wire','line'):builds[c,o,v]=build(c,o,v)
   for v in ('baseline','wire','line'):cmd(f'{c}-{o}-{v}-size',['size','-A',builds[c,o,v]/'probe'])
  print('built/tested',c,flush=True)
 if not a.followup:
  # Correctness checks before starting timing, including both no-SIMD builds.
  for c in COMP:
   build(c,'O2','line',['-DSTOMPTALK_BUILD_AVX2=OFF'],'-sse')
   build(c,'O2','line',['-DSTOMPTALK_BUILD_SSE2=OFF'],'-swar')
  build('clang23','O2','line',['-DSTOMPTALK_LIBRARY_STATIC=OFF'],'-shared')
 build('clang23','O0','line',['-DCMAKE_BUILD_TYPE=Debug'],suffix='-debug')
 san=build('clang23','O1','line',['-DSTOMPTALK_BUILD_FUZZ=ON','-DCMAKE_CXX_FLAGS_RELEASE=-O1 -g -DNDEBUG -fsanitize=address,undefined -fno-omit-frame-pointer -DSTOMPTALK_TRAMPOLINE','-DCMAKE_C_FLAGS_RELEASE=-O1 -g -DNDEBUG -fsanitize=address,undefined'],'-sanitize')
 corpus=OUT/'fuzz-corpus';shutil.copytree(src/'fuzz/corpus/v2',corpus)
 for p in (src/'fuzz/corpus/parser').iterdir():shutil.copy2(p,corpus/('legacy-'+p.name))
 cmd('manual-fuzz',[san/'fuzz_stomptalk_v2',corpus,'-seed=2817','-max_total_time='+('15' if a.followup else '30'),'-max_len=4096','-timeout=3','-artifact_prefix='+str(OUT)+'/'])
 print('configuration/sanitizer/fuzz checks passed',flush=True)
 def probe(c,o,v,b,path,plan,count,expect,label):
  x=json.loads(cmd(label,[builds[c,o,v]/'probe',path,plan,count,b],True));assert not x['error'] and not x['short_read'] and x['iterations']==count,x
  assert all(x['body_bytes' if k=='body' else k]==n*count for k,n in expect.items()),x
  return x['elapsed_ns']/1e9
 expected=dict(consumed=838,completed=10,headers=35,body_bytes=67,connected=1,json=1);cases=json.loads((PREV/'cases.json').read_text());cells=[(v,b) for b in (2,3,4) for v in ('baseline','wire','line')]
 r['status']='measuring';save()
 for c in COMP:
  for o in opts:
   vals={f'{v}/{b}':[] for v,b in cells}
   for rep in range(-1,5):
    off=rep%len(cells)
    for v,b in cells[off:]+cells[:off]:
     t=probe(c,o,v,b,PREV/'fixtures/original.bin','whole',1000000,expected,f'pure-{c}-{o}-{v}-{b}-{rep}')
     if rep>=0:vals[f'{v}/{b}'].append(t)
   row=dict(compiler=c,opt=o,**{k:summary(v) for k,v in vals.items()});r['matrix'].append(row);save()
   print('matrix',c,o,{f'{v}/{b}':round(100*(row[f'{v}/{b}']['median']/row[f'baseline/{b}']['median']-1),2) for v,b in cells if v!='baseline'},flush=True)
   if o!='O2':continue
   for name,case in cases.items():
    if a.followup and name not in ('h1_lf','h8_lf','h64_lf','long_1024','literal','send_length','fragment_chunk_7','fragment_chunk_31'):continue
    path=PREV/'fixtures'/(name+'.bin');assert hashlib.sha256(path.read_bytes()).hexdigest()==case['sha256']
    t=probe(c,o,'baseline',3,path,case['plan'],2000,case['expected'],f'calibrate-{c}-{name}');count=max(2000,min(3000000,int(.025/(t/2000))));vals={f'{v}/{b}':[] for v,b in cells}
    for rep in range(-1,3):
     off=rep%len(cells)
     for v,b in cells[off:]+cells[:off]:
      t=probe(c,o,v,b,path,case['plan'],count,case['expected'],f'case-{c}-{name}-{v}-{b}-{rep}')
      if rep>=0:vals[f'{v}/{b}'].append(t*1e9/(count*case['expected']['completed']))
    r['scenarios'].append(dict(compiler=c,opt=o,name=name,iterations=count,**{k:summary(v) for k,v in vals.items()}));save()
   print('scenarios complete',c,flush=True)
 for c in COMP:
  for rep in range(-1,3):
   variants=['baseline','wire','line'];off=rep%3
   for v in variants[off:]+variants[:off]:
    label=f'time-{c}-{v}-{rep}';timer=OUT/(label+'.json');s=cmd(label,['/usr/bin/time','-f','{"real":%e,"user":%U,"sys":%S}','-o',timer,builds[c,'O2',v]/'purestomp',0,10000000],True)
    assert s.splitlines()[-1]=='connected 10000000, frame 100000000, json 10000000, total 670000000'
    if rep>=0:r['defaults'].append(dict(compiler=c,variant=v,repeat=rep,**json.loads(timer.read_text())));save()
  for v in ('baseline','wire','line'):
   label=f'profile-{c}-O2-{v}-3';data=OUT/(label+'.data')
   cmd(label+'-record',['perf','record','-e','cycles:u','-F','997','-o',data,'--',builds[c,'O2',v]/'probe',PREV/'fixtures/original.bin','whole',10000000,3],True)
   cmd(label+'-report',['perf','report','--stdio','--no-children','--percent-limit','1','--sort','symbol','-i',data]);r['profiles'].append(dict(compiler=c,opt='O2',variant=v,backend=3,label=label));save()
 r['status']='completed'
except BaseException as e:r.update(status='failed',error=repr(e));raise
finally:save()
