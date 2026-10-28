#!/bin/sh
set -eu
stomptalk_review_root=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
exec python3 "$stomptalk_review_root/artifacts/equality-contract/2026-10-28/review/run_claude.py" "$@"
