#!/usr/bin/env python3
"""Run a read-only Claude review of frozen inputs, preserving JSONL and provenance."""
import argparse,hashlib,json,os,signal,subprocess
from datetime import datetime,timezone
from pathlib import Path

HERE=Path(__file__).resolve().parent
p=argparse.ArgumentParser(description=__doc__)
p.add_argument('--claude',default=str(Path.home()/'.local/bin/claude'))
p.add_argument('--timeout',type=int,default=1200)
p.add_argument('--check',action='store_true',help='Verify inputs without starting Claude')
a=p.parse_args()
if a.timeout<1:p.error('--timeout must be positive')
manifest=json.loads((HERE/'inputs.json').read_text())
def verify():
    return [name for name,sha in manifest['files'].items()
            if not (HERE/'snapshot'/name).is_file() or
            hashlib.sha256((HERE/'snapshot'/name).read_bytes()).hexdigest()!=sha]
changed=verify()
if changed:p.error('Frozen review inputs changed: '+', '.join(changed))
if a.check:
    print('Verified frozen review inputs for '+manifest['source_commit'])
    raise SystemExit(0)

out=HERE/('claude-'+datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S%fZ'))
out.mkdir()
task=(HERE/'TASK.md').read_bytes();(out/'TASK.md').write_bytes(task)
command=[a.claude,'--print','--output-format','stream-json','--verbose',
    '--no-session-persistence','--permission-mode','dontAsk','--safe-mode',
    '--restricted','--no-chrome','--disable-slash-commands',
    '--tools','Read,Glob,Grep','--allowedTools','Read,Glob,Grep','--strict-mcp-config']
m=dict(status='running',started_utc=datetime.now(timezone.utc).isoformat(),
    source_commit=manifest['source_commit'],baseline_commit=manifest['baseline_commit'],
    command=command,cwd=str(HERE/'snapshot'),timeout_seconds=a.timeout,
    task_sha256=hashlib.sha256(task).hexdigest(),
    inputs_sha256=hashlib.sha256((HERE/'inputs.json').read_bytes()).hexdigest())
def save():(out/'run.json').write_text(json.dumps(m,indent=2)+'\n')
def stop(process):
    if process is None or process.poll() is not None:return
    os.killpg(process.pid,signal.SIGTERM)
    try:process.wait(timeout=5)
    except subprocess.TimeoutExpired:
        os.killpg(process.pid,signal.SIGKILL);process.wait()
save()
print('Review directory:',out,flush=True)
print('Live JSONL:',out/'stdout.jsonl',flush=True)
process=None
try:
    with (out/'stdout.jsonl').open('wb') as stdout,(out/'stderr.log').open('wb') as stderr:
        process=subprocess.Popen(command,stdin=subprocess.PIPE,stdout=stdout,stderr=stderr,
            cwd=HERE/'snapshot',start_new_session=True)
        process.communicate(task,timeout=a.timeout)
    m.update(exit_code=process.returncode,status='completed' if process.returncode==0 else 'failed')
    final=None
    for line in (out/'stdout.jsonl').read_text(errors='replace').splitlines():
        try:event=json.loads(line)
        except ValueError:continue
        if event.get('type')=='result':final=event
    if final is None or final.get('is_error') or not isinstance(final.get('result'),str):
        m.update(status='failed',error='No successful final review',final_event=final)
    else:(out/'review.md').write_text(final['result']+'\n')
except (OSError,subprocess.TimeoutExpired,KeyboardInterrupt) as error:
    m.update(status='failed',error=type(error).__name__+': '+str(error))
finally:
    stop(process)
    m['changed_inputs']=verify()
    if m['changed_inputs']:m.update(status='failed',error='Frozen inputs changed')
    m['finished_utc']=datetime.now(timezone.utc).isoformat();save()
print(json.dumps({k:m[k] for k in ('status','exit_code','error') if k in m}),flush=True)
print('Review:',out/'review.md' if (out/'review.md').exists() else 'not produced',flush=True)
print('Diagnostics:',out/'stderr.log',flush=True)
raise SystemExit(0 if m['status']=='completed' else 1)
