#!/usr/bin/env bash
set -euo pipefail

./scripts/doctor.sh

if [[ -f package.json ]]; then
  if command -v npm >/dev/null 2>&1; then
    npm test --if-present
    npm run lint --if-present
    npm run typecheck --if-present
    npm run build --if-present
  fi
fi

if [[ -f pyproject.toml || -f pytest.ini || -d tests ]]; then
  if command -v pytest >/dev/null 2>&1; then
    pytest
  fi
fi

if [[ -f go.mod ]] && command -v go >/dev/null 2>&1; then
  go test ./...
fi

if [[ -f Cargo.toml ]] && command -v cargo >/dev/null 2>&1; then
  cargo test
fi

echo "Verification entrypoint completed. Add project-specific checks as the project is bootstrapped."
