#!/usr/bin/env python3
"""Review the frozen design inputs with read-only Claude tools; retain JSONL."""
import argparse, hashlib, json, os, signal, subprocess
from datetime import datetime, timezone
from pathlib import Path
H=Path(__file__).resolve().parent
p=argparse.ArgumentParser(description=__doc__)
p.add_argument('--claude',default='/home/meil/.local/bin/claude')
p.add_argument('--timeout',type=int,default=300)
p.add_argument('--task',type=Path,default=H/'TASK.md')
p.add_argument('--check',action='store_true',help='Verify frozen inputs without invoking Claude')
a=p.parse_args()
if a.timeout<1:p.error('timeout must be positive')
manifest=json.loads((H/'inputs.json').read_text())
def verify():
    return [n for n,h in manifest['files'].items() if hashlib.sha256((H/'snapshot'/n).read_bytes()).hexdigest()!=h]
assert not verify()
if a.check:
    print('Frozen inputs verified; Claude was not started.')
    raise SystemExit(0)
out=H/('claude-'+datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S%fZ'));out.mkdir()
task=a.task.resolve().read_bytes();(out/'TASK.md').write_bytes(task)
command=[a.claude,'--print','--output-format','stream-json','--verbose','--no-session-persistence',
    '--permission-mode','dontAsk','--safe-mode','--restricted','--no-chrome','--disable-slash-commands',
    '--tools','Read,Glob,Grep','--allowedTools','Read,Glob,Grep','--strict-mcp-config']
m=dict(status='running',started_utc=datetime.now(timezone.utc).isoformat(),command=command,
    cwd=str(H/'snapshot'),timeout_seconds=a.timeout,task_sha256=hashlib.sha256(task).hexdigest(),
    inputs_sha256=hashlib.sha256((H/'inputs.json').read_bytes()).hexdigest())
def save():(out/'run.json').write_text(json.dumps(m,indent=2)+'\n')
save();print(out,flush=True);process=None
try:
    with (out/'stdout.jsonl').open('wb') as stdout,(out/'stderr.log').open('wb') as stderr:
        process=subprocess.Popen(command,stdin=subprocess.PIPE,stdout=stdout,stderr=stderr,
            cwd=H/'snapshot',start_new_session=True)
        process.communicate(task,timeout=a.timeout)
    m.update(exit_code=process.returncode,status='completed' if process.returncode==0 else 'failed')
    final=None
    for line in (out/'stdout.jsonl').read_text(errors='replace').splitlines():
        try:event=json.loads(line)
        except ValueError:continue
        if event.get('type')=='result':final=event
    if final is None or final.get('is_error'):
        m.update(status='failed',error='No successful final result',final_event=final)
    elif isinstance(final.get('result'),str):(out/'review.md').write_text(final['result']+'\n')
except (OSError,subprocess.TimeoutExpired,KeyboardInterrupt) as e:
    m.update(status='failed',error=type(e).__name__+': '+str(e))
finally:
    if process is not None and process.poll() is None:
        os.killpg(process.pid,signal.SIGTERM)
        try:process.wait(timeout=5)
        except subprocess.TimeoutExpired:os.killpg(process.pid,signal.SIGKILL);process.wait()
    m['changed_inputs']=verify()
    if m['changed_inputs']:m.update(status='failed',error='Frozen inputs changed')
    m['finished_utc']=datetime.now(timezone.utc).isoformat();save()
print(json.dumps({k:m[k] for k in ('status','exit_code','error') if k in m}),flush=True)
raise SystemExit(0 if m['status']=='completed' else 1)
