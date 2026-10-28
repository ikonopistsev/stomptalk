#!/usr/bin/env python3
"""One million complete frames at each input size, 1..838; pinned to CPU 4."""
from pathlib import Path
import csv, hashlib, io, json, os, subprocess, time

H = Path(__file__).resolve().parent
ROOT = H.parents[2]
BINARY = H/'build/clang23-O3-pgo/purestomp'
command = ['/usr/bin/time', '-f', 'real %e\nuser %U\nsys %S', '-o', str(H/'sweep.time'),
           str(BINARY), '3', '100000', 'all']
metadata = dict(command=command, cpu=4, compiler='Clang 23.1.4', opt='O3', backend='SSE2',
    pgo_source_commit='52d1648', iterations_per_size=100000, frames_per_size=1000000,
    repeats=1, status='running', source_base_commit=subprocess.check_output(
        ['git', 'rev-parse', 'HEAD'], cwd=ROOT, text=True).strip(),
    sha256={str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest()
        for p in (ROOT/'test/purestomp.c', ROOT/'CMakeLists.txt', ROOT/'pgo/clang23.profdata', BINARY)})
(H/'source.patch').write_bytes(subprocess.check_output(['git','diff','--','test/purestomp.c','CMakeLists.txt'],cwd=ROOT))
def save(): (H/'run.json').write_text(json.dumps(metadata, indent=2)+'\n')
def affinity(): os.sched_setaffinity(0, {4})
save()
start = time.monotonic()
with (H/'sweep.csv').open('w') as out, (H/'sweep.stderr').open('w') as err:
    p = subprocess.run(command, stdout=out, stderr=err, env=dict(os.environ, LC_ALL='C'), preexec_fn=affinity)
metadata.update(exit=p.returncode, seconds=time.monotonic()-start)
save()
assert p.returncode == 0, (H/'sweep.stderr').read_text()
rows = list(csv.DictReader(io.StringIO('\n'.join(line for line in (H/'sweep.csv').read_text().splitlines()
    if not line.startswith('#')))))
assert len(rows) == 838
for size, row in enumerate(rows, 1):
    for k, v in dict(chunk_bytes=size, iterations=100000, frames=1000000, headers=3500000,
                     payload_bytes=6700000, calls=((838+size-1)//size)*100000).items():
        assert int(row[k]) == v, (size, k, row[k], v)
    assert float(row['seconds']) > 0 and float(row['mframes_s']) > 0
metadata.update(status='completed', verified_sizes=len(rows), frames=838000000,
    input_bytes=838*100000*838, timing=(H/'sweep.time').read_text())
save()
for size in (1,2,3,4,8,16,32,64,128,256,512,838):
    row=rows[size-1]
    print(size, row['seconds'], row['mframes_s'], flush=True)
