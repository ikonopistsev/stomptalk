#!/usr/bin/env python3
"""Four compiler/optimization PGO pairs, one frozen parser and pinned P core."""
from pathlib import Path
from datetime import datetime, timezone
import argparse, hashlib, json, os, resource, shutil, statistics, subprocess, time

H = Path(__file__).resolve().parent
ROOT = H.parents[2]
FIX = ROOT / 'artifacts/backend-redesign/2026-10-28'
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--chain', choices=('line', 'split'), default='line')
args = parser.parse_args()
OUT = H / 'runs' / datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S%fZ')
OUT.mkdir(parents=True)
COMP = {'gcc16': ('/usr/bin/g++-16', '/usr/bin/gcc-16'),
        'clang23': ('/usr/lib/llvm/23/bin/clang++', '/usr/lib/llvm/23/bin/clang')}
PROFDATA = '/usr/lib/llvm/23/bin/llvm-profdata'
r = dict(status='building', chain=args.chain, cpu=4, backend=3,
         commands=[], training=[], matrix=[], scenarios=[], defaults=[], profiles=[], sizes=[])

def save():
    (OUT / 'run.json').write_text(json.dumps(r, indent=2) + '\n')

def command(label, argv, pin=False, stack=False, env=None):
    argv = list(map(str, argv)); start = time.monotonic()
    def prepare():
        if pin: os.sched_setaffinity(0, {4})
        if stack:
            _, hard = resource.getrlimit(resource.RLIMIT_STACK)
            resource.setrlimit(resource.RLIMIT_STACK, (64*1024*1024, hard))
    with (OUT/(label+'.stdout')).open('w') as out, (OUT/(label+'.stderr')).open('w') as err:
        p = subprocess.Popen(argv, stdout=out, stderr=err,
            env=dict(os.environ, LC_ALL='C', ASAN_OPTIONS='detect_leaks=0', UBSAN_OPTIONS='halt_on_error=1', **(env or {})),
            preexec_fn=prepare if pin or stack else None)
        affinity = sorted(os.sched_getaffinity(p.pid)) if pin else None
        if pin: assert affinity == [4]
        code = p.wait()
    r['commands'].append(dict(label=label,args=argv,exit=code,seconds=time.monotonic()-start,
        affinity=affinity,stack_bytes=64*1024*1024 if stack else None)); save()
    if code:
        raise RuntimeError(label+': '+(OUT/(label+'.stderr')).read_text()[-3000:]+(OUT/(label+'.stdout')).read_text()[-1000:])
    return (OUT/(label+'.stdout')).read_text()

def digest(path): return hashlib.sha256(path.read_bytes()).hexdigest()
def summary(values):
    m=statistics.median(values)
    return dict(samples=values,median=m,spread_percent=100*(max(values)-min(values))/m)

try:
    source=OUT/'source'; source.mkdir()
    for name in ('src','include','test','fuzz','cmake','protocol'):
        shutil.copytree(ROOT/name, source/name)
    for name in ('CMakeLists.txt','stomptalkgen.js','package.json','package-lock.json'):
        shutil.copy2(ROOT/name, source/name)
    shutil.copy2(FIX/'probe.cpp', OUT/'probe.cpp')
    shutil.copytree(FIX/'fixtures', OUT/'fixtures')
    cases=json.loads((FIX/'cases.json').read_text())
    (OUT/'cases.json').write_text(json.dumps(cases,indent=2)+'\n')
    r['source_sha256']={str(p.relative_to(source)):digest(p) for p in source.rglob('*') if p.is_file()}
    r['probe_sha256']=digest(OUT/'probe.cpp')
    r['fixtures_sha256']={p.name:digest(p) for p in (OUT/'fixtures').iterdir() if p.is_file()}
    r['versions']={c:command(c+'-version',[cc,'--version']) for c,(cc,_) in COMP.items()}
    r['llvm_profdata_version']=command('profdata-version',[PROFDATA,'--version'])
    r['cpu_info']=command('lscpu',['lscpu','-e=CPU,CORE,MAXMHZ,ONLINE'])
    print(OUT,flush=True)
    original=dict(consumed=838,completed=10,headers=35,body_bytes=67,connected=1,json=1)
    train_cases=['h8_lf','long_128','escaped','literal','fragment_chunk_7','body64k_markers','send_length']
    r['training_cases']=train_cases
    r['held_out_cases']=[n for n in cases if n not in train_cases]
    builds={}

    def build(c,opt,stage):
        cxx,cc=COMP[c]; tag=f'{c}-{opt}'; label=tag+'-'+stage
        dest=OUT/'build'/tag/('plain' if stage=='plain' else 'pgo')
        profile=OUT/'profiles'/tag; profile.mkdir(parents=True,exist_ok=True)
        flags=[]
        if stage=='generate': flags=['-fprofile-generate='+str(profile)]
        if stage=='use':
            if c=='gcc16':
                flags=['-fprofile-use='+str(profile),'-Werror=coverage-mismatch','-Werror=missing-profile']
            else:
                flags=['-fprofile-use='+str(profile/'merged.profdata'),
                       '-Werror=profile-instr-out-of-date','-Werror=profile-instr-unprofiled']
        common=' '.join(['-'+opt,'-DNDEBUG',*flags])
        command(label+'-configure',['cmake','-G','Ninja','-S',source,'-B',dest,
            '-DCMAKE_BUILD_TYPE=Release','-DCMAKE_CXX_COMPILER='+cxx,'-DCMAKE_C_COMPILER='+cc,
            '-DCMAKE_CXX_FLAGS_RELEASE='+common,'-DCMAKE_C_FLAGS_RELEASE='+common,
            '-DSTOMPTALK_BUILD_TESTS=ON','-DSTOMPTALK_EXPERIMENT_HEADER_LINE='+('ON' if args.chain=='line' else 'OFF')])
        command(label+'-build',['cmake','--build',dest,'-j','4'])
        command(label+'-probe',[cxx,'-'+opt,'-DNDEBUG','-std=c++14','-DSTOMPTALK_STATIC',*flags,
            '-I'+str(source/'include'),OUT/'probe.cpp',dest/'libstomptalk.a','-o',dest/'probe'])
        if stage!='generate':
            command(label+'-test',['ctest','--test-dir',dest,'--output-on-failure'])
            shutil.copy2(dest/'Testing/Temporary/LastTest.log',OUT/(label+'-test-detail.log'))
        return dest,profile

    def probe(binary,path,plan,count,backend,expect,label,env=None,stack=False):
        value=json.loads(command(label,[binary,path,plan,count,backend],True,stack,env))
        assert not value['error'] and not value['short_read'] and value['iterations']==count,value
        for k,n in expect.items(): assert value['body_bytes' if k=='body' else k]==n*count,value
        return value['elapsed_ns']/1e9

    for c in COMP:
        for opt in ('O2','O3'):
            tag=f'{c}-{opt}'
            builds[c,opt,'plain'],_=build(c,opt,'plain')
            gen,profile=build(c,opt,'generate')
            training_env={'LLVM_PROFILE_FILE':str(profile/'unit-%m-%p.profraw')} if c=='clang23' else {}
            command(tag+'-generate-unit',[gen/'stomptalk_unit_test'],True,True,training_env)
            if c=='gcc16':
                cleared=[]
                for p in profile.rglob('*.gcda'):
                    if p.name.endswith(('stomptalk.cpp.gcda','parser_avx2.cpp.gcda')):
                        cleared.append(str(p.relative_to(profile)));p.unlink()
                assert len(cleared)==2,cleared
                r['training'].append(dict(compiler=c,opt=opt,cleared_test_parser_profiles=cleared))
            else:
                # IR PGO has per-binary raw files. Keep unit coverage for cold functions;
                # representative millions of frames dominate the production state counts.
                r['training'].append(dict(compiler=c,opt=opt,unit_profiles='included (IR PGO)'))
            for backend,count in ((3,500000),(4,500000),(2,100000),(1,100000)):
                env={'LLVM_PROFILE_FILE':str(profile/f'train-original-{backend}-%m-%p.profraw')} if c=='clang23' else {}
                probe(gen/'probe',OUT/'fixtures/original.bin','whole',count,backend,original,
                    tag+f'-train-original-{backend}',env,True)
            for name in train_cases:
                case=cases[name];path=OUT/'fixtures'/(name+'.bin');assert digest(path)==case['sha256']
                for backend in (3,4):
                    env={'LLVM_PROFILE_FILE':str(profile/f'train-{name}-{backend}-%m-%p.profraw')} if c=='clang23' else {}
                    probe(gen/'probe',path,case['plan'],10000,backend,case['expected'],
                        tag+f'-train-{name}-{backend}',env,True)
            env={'LLVM_PROFILE_FILE':str(profile/'train-c-%m-%p.profraw')} if c=='clang23' else {}
            output=command(tag+'-train-c',[gen/'purestomp',3,500000],True,True,env)
            assert output.splitlines()[-1]=='connected 500000, frame 5000000, json 500000, total 33500000'
            if c=='clang23':
                raw=sorted(profile.glob('*.profraw'));assert raw
                command(tag+'-merge',[PROFDATA,'merge','-o',profile/'merged.profdata',*raw])
            r.setdefault('profile_sha256',{})[tag]={str(p.relative_to(profile)):digest(p) for p in profile.rglob('*') if p.is_file()}
            builds[c,opt,'pgo'],_=build(c,opt,'use')
            for variant in ('plain','pgo'):
                size=command(tag+'-'+variant+'-size',['size','-A',builds[c,opt,variant]/'probe'])
                r['sizes'].append(dict(compiler=c,opt=opt,variant=variant,output=size))
            print('Generated, trained, profile-use tests passed:',tag,flush=True)

    # Assertions remain enabled in this non-instrumented control build.
    debug=OUT/'build/debug'
    command('debug-configure',['cmake','-G','Ninja','-S',source,'-B',debug,
        '-DCMAKE_BUILD_TYPE=Debug','-DCMAKE_CXX_COMPILER='+COMP['clang23'][0],
        '-DCMAKE_C_COMPILER='+COMP['clang23'][1],'-DSTOMPTALK_BUILD_TESTS=ON',
        '-DSTOMPTALK_EXPERIMENT_HEADER_LINE='+('ON' if args.chain=='line' else 'OFF')])
    command('debug-build',['cmake','--build',debug,'-j','4'])
    command('debug-test',['ctest','--test-dir',debug,'--output-on-failure'])
    r['status']='measuring';save()
    for c in COMP:
        for opt in ('O2','O3'):
            tag=f'{c}-{opt}';values={'plain':[],'pgo':[]}
            for repeat in range(-1,5):
                for variant in (('plain','pgo') if repeat%2 else ('pgo','plain')):
                    seconds=probe(builds[c,opt,variant]/'probe',OUT/'fixtures/original.bin','whole',1000000,3,original,
                        tag+f'-pure-{variant}-{repeat}')
                    if repeat>=0:values[variant].append(seconds)
            r['matrix'].append(dict(compiler=c,opt=opt,**{v:summary(x) for v,x in values.items()}));save()
            for name,case in cases.items():
                path=OUT/'fixtures'/(name+'.bin')
                pilot=probe(builds[c,opt,'plain']/'probe',path,case['plan'],2000,3,case['expected'],tag+'-calibrate-'+name)
                count=max(2000,min(3000000,int(.03/(pilot/2000))))
                values={'plain':[],'pgo':[]}
                for repeat in range(-1,3):
                    for variant in (('plain','pgo') if repeat%2 else ('pgo','plain')):
                        seconds=probe(builds[c,opt,variant]/'probe',path,case['plan'],count,3,case['expected'],
                            tag+f'-case-{name}-{variant}-{repeat}')
                        if repeat>=0:values[variant].append(seconds*1e9/(count*case['expected']['completed']))
                r['scenarios'].append(dict(compiler=c,opt=opt,name=name,trained=name in train_cases,
                    iterations=count,**{v:summary(x) for v,x in values.items()}));save()
            for repeat in range(-1,3):
                for variant in (('plain','pgo') if repeat%2 else ('pgo','plain')):
                    label=tag+f'-time-{variant}-{repeat}';timing=OUT/(label+'.json')
                    output=command(label,['/usr/bin/time','-f','{"real":%e,"user":%U,"sys":%S}',
                        '-o',timing,builds[c,opt,variant]/'purestomp',0,10000000],True)
                    assert output.splitlines()[-1]=='connected 10000000, frame 100000000, json 10000000, total 670000000'
                    if repeat>=0:r['defaults'].append(dict(compiler=c,opt=opt,variant=variant,repeat=repeat,
                        **json.loads(timing.read_text())));save()
            for variant in ('plain','pgo'):
                label=tag+'-profile-'+variant;data=OUT/(label+'.data')
                output=command(label+'-record',['perf','record','-e','cycles:u','-F','997','-o',data,'--',
                    builds[c,opt,variant]/'probe',OUT/'fixtures/original.bin','whole',10000000,3],True)
                value=json.loads(output)
                assert value['completed']==100000000 and value['consumed']==8380000000 and not value['error'] and not value['short_read']
                report=command(label+'-report',['perf','report','--stdio','--no-children','--percent-limit','1','--sort','symbol','-i',data])
                assert '# Total Lost Samples: 0' in report
                r['profiles'].append(dict(compiler=c,opt=opt,variant=variant,label=label));save()
            print('Timing/scenarios/GNU time/perf complete:',tag,flush=True)
    r['status']='completed'
except BaseException as error:
    r.update(status='failed',error=repr(error));raise
finally:
    save()
