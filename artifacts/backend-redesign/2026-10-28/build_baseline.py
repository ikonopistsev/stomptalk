from pathlib import Path
import subprocess, json, time
H=Path(__file__).resolve().parent
rows=[]
for name,cxx,cc in [('gcc16','/usr/bin/g++-16','/usr/bin/gcc-16'),('clang23','/usr/lib/llvm/23/bin/clang++','/usr/lib/llvm/23/bin/clang')]:
 for opt in ('Os','O2','O3'):
  b=H/'build'/f'{name}-{opt}-before'; b.mkdir(parents=True,exist_ok=True)
  commands=[['cmake','-G','Ninja','-S',str(H/'before'),'-B',str(b),'-DCMAKE_BUILD_TYPE=Release','-DCMAKE_CXX_COMPILER='+cxx,'-DCMAKE_C_COMPILER='+cc,'-DCMAKE_CXX_FLAGS_RELEASE=-'+opt+' -DNDEBUG','-DCMAKE_C_FLAGS_RELEASE=-'+opt+' -DNDEBUG','-DSTOMPTALK_BUILD_TESTS=ON'],['cmake','--build',str(b),'-j','4'],['ctest','--test-dir',str(b),'--output-on-failure'],[cxx,'-'+opt,'-DNDEBUG','-std=c++14','-DSTOMPTALK_STATIC','-I'+str(H/'before/include'),str(H/'probe.cpp'),str(b/'libstomptalk.a'),'-o',str(b/'probe')]]
  for i,c in enumerate(commands):
   p=subprocess.run(c,capture_output=True,text=True);(b/f'step-{i}.log').write_text(p.stdout+p.stderr);rows.append(dict(command=c,exit=p.returncode));(H/'baseline-builds.json').write_text(json.dumps(rows,indent=2)+'\n')
   if p.returncode:raise RuntimeError(str(b)+p.stderr[-1500:])
  print(name,opt,'before tested',flush=True)
