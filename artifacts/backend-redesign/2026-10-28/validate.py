#!/usr/bin/env python3
"""Build configuration, guard-page, C ABI and manual sanitizer/fuzz checks."""
from pathlib import Path
from datetime import datetime, timezone
import hashlib, json, os, re, shutil, subprocess
H=Path(__file__).resolve().parent;ROOT=H.parents[2]
OUT=H/'validation'/datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S%fZ');OUT.mkdir(parents=True)
r=dict(status='running',commands=[])
def save():(OUT/'run.json').write_text(json.dumps(r,indent=2)+'\n')
def run(label,args,env=None):
 args=list(map(str,args));p=subprocess.run(args,capture_output=True,text=True,env=dict(os.environ,LC_ALL='C',ASAN_OPTIONS='detect_leaks=0',UBSAN_OPTIONS='halt_on_error=1',**(env or {})))
 (OUT/(label+'.log')).write_text(p.stdout+p.stderr);r['commands'].append(dict(label=label,args=args,exit=p.returncode));save()
 if p.returncode:raise RuntimeError(label+': '+p.stderr[-1500:]+p.stdout[-1000:])
 return p.stdout
print(OUT,flush=True);save()
try:
 src=OUT/'source';src.mkdir()
 for d in ('src','include','test','fuzz','cmake','protocol'):shutil.copytree(ROOT/d,src/d)
 for n in ('CMakeLists.txt','stomptalkgen.js','package.json','package-lock.json'):shutil.copy2(ROOT/n,src/n)
 r['source_sha256']={str(p.relative_to(src)):hashlib.sha256(p.read_bytes()).hexdigest() for p in src.rglob('*') if p.is_file()}
 def build(label,options=(),c='clang'):
  b=OUT/'build'/label;cxx='/usr/lib/llvm/23/bin/clang++' if c=='clang' else '/usr/bin/g++-16';cc='/usr/lib/llvm/23/bin/clang' if c=='clang' else '/usr/bin/gcc-16'
  run(label+'-configure',['cmake','-G','Ninja','-S',src,'-B',b,'-DCMAKE_BUILD_TYPE=Release','-DCMAKE_CXX_COMPILER='+cxx,'-DCMAKE_C_COMPILER='+cc,'-DCMAKE_CXX_FLAGS_RELEASE=-O2 -DNDEBUG','-DCMAKE_C_FLAGS_RELEASE=-O2 -DNDEBUG','-DSTOMPTALK_BUILD_TESTS=ON',*options]);run(label+'-build',['cmake','--build',b,'-j','4']);run(label+'-tests',['ctest','--test-dir',b,'--output-on-failure']);print(label,'passed',flush=True);return b
 for c in ('gcc','clang'):
  build(c+'-sse2',['-DSTOMPTALK_BUILD_AVX2=OFF'],c)
  build(c+'-swar',['-DSTOMPTALK_BUILD_SSE2=OFF'],c)
 build('macros-swar',['-DCMAKE_CXX_FLAGS=-DSTOMPTALK_DISABLE_SSE2 -DSTOMPTALK_DISABLE_AVX2'])
 build('macros-sse2',['-DCMAKE_CXX_FLAGS=-DSTOMPTALK_DISABLE_AVX2'])
 build('parser-avx-only',['-DSTOMPTALK_BUILD_AVX2_NAMES=OFF'])
 build('names-avx-only',['-DSTOMPTALK_BUILD_AVX2_PARSER=OFF'])
 build('debug',['-DCMAKE_BUILD_TYPE=Debug'])
 shared=build('shared',['-DSTOMPTALK_LIBRARY_STATIC=OFF','-DSTOMPTALK_LIBRARY_INSTALL=ON'])
 exports=run('shared-exports',['nm','-D','--defined-only','-j',shared/'libstomptalk.so']).splitlines()
 expected=re.findall(r'STOMPTALK_EXPORT\s+[\w\s*]+?\b(stomptalk_\w+)\s*\(', (src/'include/stomptalk/parser.h').read_text());assert sorted(exports)==sorted(expected),(exports,expected)
 r['exported_c_api']=exports;save();install=OUT/'install';run('install',['cmake','--install',shared,'--prefix',install]);libdir=next(install.glob('lib*/libstomptalk.so')).parent
 run('c99-build',['/usr/lib/llvm/23/bin/clang','-std=c99','-O2','-I'+str(install/'include'),src/'test/purestomp.c','-L'+str(libdir),'-lstomptalk','-Wl,-rpath,'+str(libdir),'-o',OUT/'c99-client']);run('c99-run',[OUT/'c99-client',0,10000])
 san=build('sanitize',['-DSTOMPTALK_BUILD_FUZZ=ON','-DCMAKE_CXX_FLAGS_RELEASE=-O1 -g -DNDEBUG -fsanitize=address,undefined -fno-omit-frame-pointer -DSTOMPTALK_TRAMPOLINE','-DCMAKE_C_FLAGS_RELEASE=-O1 -g -DNDEBUG -fsanitize=address,undefined'])
 corpus=OUT/'fuzz-corpus';shutil.copytree(src/'fuzz/corpus/v2',corpus)
 for q in (src/'fuzz/corpus/parser').iterdir():shutil.copy2(q,corpus/('legacy-'+q.name))
 run('manual-fuzz',[san/'fuzz_stomptalk_v2',corpus,'-seed=2810','-max_total_time=30','-max_len=4096','-timeout=3','-artifact_prefix='+str(OUT)+'/'])
 # Regeneration must reproduce the checked-in headers byte for byte.
 before={str(p.relative_to(src)):hashlib.sha256(p.read_bytes()).hexdigest() for d in ('src','include') for p in (src/d).rglob('*') if p.is_file()}
 run('generator',['node',src/'stomptalkgen.js'])
 assert all(hashlib.sha256((src/n).read_bytes()).hexdigest()==h for n,h in before.items())
 r['status']='completed'
except BaseException as e:r.update(status='failed',error=repr(e));raise
finally:save()
