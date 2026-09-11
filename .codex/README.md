# Codex

Codex should treat the repository's root `AGENTS.md` as the canonical project instructions. Add nested `AGENTS.md` files only when a subtree needs genuinely different guidance.

Keep machine/user-specific Codex configuration outside the repository unless a setting is intentionally project-portable. Do not commit credentials.

For a fresh project, start with the bootstrap prompt in the root `README.md`, then customize `scripts/verify.sh` so there is one predictable verification entrypoint for agents and CI.
