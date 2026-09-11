#!/usr/bin/env bash
set -euo pipefail

fail=0
required=(AGENTS.md README.md MISSION.md ARCHITECTURE.md tasks/ACTIVE.md)

for file in "${required[@]}"; do
  if [[ ! -s "$file" ]]; then
    echo "MISSING: $file"
    fail=1
  else
    echo "OK: $file"
  fi
done

if git grep -nE '(BEGIN (RSA|OPENSSH|EC|DSA) PRIVATE KEY|sk-[A-Za-z0-9_-]{20,}|gh[pousr]_[A-Za-z0-9]{20,})' -- ':!scripts/doctor.sh' >/tmp/agent-starter-secret-scan 2>/dev/null; then
  echo "POSSIBLE SECRET(S) FOUND:"
  cat /tmp/agent-starter-secret-scan
  fail=1
else
  echo "OK: basic secret scan"
fi
rm -f /tmp/agent-starter-secret-scan

if [[ $fail -ne 0 ]]; then
  echo "Doctor found problems."
  exit 1
fi

echo "Agent Starter baseline looks healthy."
