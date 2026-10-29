#!/usr/bin/env python3
"""Count buffer operations in a diagnostic copy; do not measure its speed."""
from pathlib import Path
import csv, hashlib, json, shutil, subprocess

H = Path(__file__).resolve().parent
ROOT = H.parents[2]
SOURCE = H/'build/source'
BUILD = H/'build/trace'
SOURCE.mkdir(parents=True, exist_ok=True)
manifest = dict(base_commit=subprocess.check_output(['git','rev-parse','HEAD'],cwd=ROOT,text=True).strip(),
                source_sha256={}, commands=[])
for name in ('src', 'include', 'test', 'cmake'):
    shutil.copytree(ROOT/name, SOURCE/name, dirs_exist_ok=True)
shutil.copy2(ROOT/'CMakeLists.txt', SOURCE/'CMakeLists.txt')
for name in ('src', 'include', 'test', 'cmake', 'CMakeLists.txt'):
    paths = (ROOT/name).rglob('*') if (ROOT/name).is_dir() else [ROOT/name]
    for p in paths:
        if p.is_file(): manifest['source_sha256'][str(p.relative_to(ROOT))] = hashlib.sha256(p.read_bytes()).hexdigest()
shutil.copy2(H/'trace.h', SOURCE/'include/stomptalk/trace.h')
shutil.copy2(H/'trace.h', SOURCE/'trace.h')
shutil.copy2(H/'trace.c', SOURCE/'trace.c')
patches = {
    'include/stomptalk/stackbuf.hpp': [
        ('#include <cstring>', '#include <cstring>\n#include "stomptalk/trace.h"'),
        ('        std::memmove(begin_, begin_ + offset, count);',
         '        trace_event(1, count);\n        std::memmove(begin_, begin_ + offset, count);'),
        ('        std::memcpy(curr_, data, size);',
         '        trace_event(0, size);\n        std::memcpy(curr_, data, size);')],
    'src/parser_impl.hpp': [
        ('    if (header_begin_)\n        std::memmove(headers_, headers_ + header_begin_, count * sizeof(*headers_));',
         '    if (header_begin_) {\n        trace_event(2, count * sizeof(*headers_));\n'
         '        std::memmove(headers_, headers_ + header_begin_, count * sizeof(*headers_));\n    }')],
    'test/purestomp.c': [
        ('#include "stomptalk/parser.h"', '#include "stomptalk/parser.h"\n#include "stomptalk/trace.h"'),
        ('        const double start = seconds();', '        trace_reset();\n        const double start = seconds();'),
        ('        printf("%zu,%zu,%zu,%zu,%zu,%zu,%.9f,%.6f,%.6f\\n", chunk, iterations,',
         '        trace_write(chunk, iterations);\n        printf("%zu,%zu,%zu,%zu,%zu,%zu,%.9f,%.6f,%.6f\\n", chunk, iterations,')]
}
for name, replacements in patches.items():
    p = SOURCE/name
    text = p.read_text()
    for before, after in replacements:
        assert text.count(before) == 1, (name, before)
        text = text.replace(before, after)
    p.write_text(text)
with (SOURCE/'CMakeLists.txt').open('a') as f: f.write('\ntarget_sources(stomptalk PRIVATE trace.c)\n')

def run(label, args):
    p = subprocess.run(list(map(str,args)),capture_output=True,text=True)
    manifest['commands'].append(dict(label=label,args=list(map(str,args)),exit=p.returncode))
    (H/(label+'.log')).write_text('\n'.join(s.rstrip() for s in (p.stdout+p.stderr).splitlines())+'\n')
    assert p.returncode == 0, p.stderr

run('configure',['cmake','-G','Ninja','-S',SOURCE,'-B',BUILD,'-DCMAKE_BUILD_TYPE=Release',
    '-DCMAKE_C_COMPILER=/usr/lib/llvm/23/bin/clang','-DCMAKE_CXX_COMPILER=/usr/lib/llvm/23/bin/clang++',
    '-DCMAKE_C_FLAGS_RELEASE=-O2 -DNDEBUG','-DCMAKE_CXX_FLAGS_RELEASE=-O2 -DNDEBUG',
    '-DSTOMPTALK_BUILD_TESTS=ON'])
run('build',['cmake','--build',BUILD,'--target','purestomp','-j','4'])
for iterations in (1,3):
    args=[str(BUILD/'purestomp'),'3',str(iterations),'all']
    p=subprocess.run(args,capture_output=True,text=True)
    manifest['commands'].append(dict(label='count-'+str(iterations),args=args,exit=p.returncode))
    assert p.returncode == 0, p.stderr
    # Instrumented throughput is deliberately not reported as performance data.
    (H/('counts-'+str(iterations)+'.csv')).write_text(p.stderr)
    rows=list(csv.DictReader(p.stderr.splitlines()))
    assert len(rows)==838
    if iterations==1: baseline=rows
    for n,row in enumerate(rows,1):
        assert int(row['chunk'])==n and int(row['iterations'])==iterations
        assert int(row['retain_nonzero'])<=int(row['retain_calls'])<=(838+n-1)//n*iterations
        for k in row:
            if k not in ('chunk','iterations'): assert int(row[k])==int(baseline[n-1][k])*iterations,(n,k)
assert all(hashlib.sha256((ROOT/f).read_bytes()).hexdigest()==sha for f,sha in manifest['source_sha256'].items())
manifest['status']='completed'
(H/'run.json').write_text(json.dumps(manifest,indent=2)+'\n')
for n in (1,2,3,4,8,16,32,64,128,256,512,838): print(baseline[n-1])
