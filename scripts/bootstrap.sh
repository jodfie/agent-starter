#!/usr/bin/env bash
set -euo pipefail

cat <<'EOF'
Agent Starter bootstrap

1. Edit MISSION.md and replace all project placeholders.
2. Put the first objective + acceptance criteria in tasks/ACTIVE.md.
3. Update README.md for the actual product.
4. Ask your coding agent:

   Bootstrap this repository for the project described in MISSION.md. Inspect the
   existing template, convert placeholders into project-specific content, establish
   explicit acceptance criteria, plan non-trivial work, then implement and verify
   the highest-priority active objective. Preserve AGENTS.md as the canonical
   operating contract and do not claim completion without evidence.

5. Run ./scripts/doctor.sh and customize ./scripts/verify.sh for the stack.
EOF
