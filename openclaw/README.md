# OpenClaw Overlay

Use this directory when a project will be operated by an OpenClaw agent.

OpenClaw distinguishes an **agent workspace** from a code repository. Its workspace can contain `AGENTS.md`, `SOUL.md`, `IDENTITY.md`, `USER.md`, optional `MEMORY.md`, and daily memory. Persona/user/memory files can contain private information and should not be blindly committed to a public source repository.

## Recommended pattern

Keep the project repository as the code working directory and keep the OpenClaw agent workspace private. Configure OpenClaw so the agent can work in the project repository while retaining its private workspace context.

For a new agent workspace:

1. Let OpenClaw bootstrap its normal workspace, or seed the safe templates in this directory.
2. Keep private `USER.md`, `MEMORY.md`, `memory/`, credentials, sessions, and machine-specific state out of this public repository.
3. Have the OpenClaw project agent read the project's root `AGENTS.md` as its repository contract.
4. Put environment-specific tool conventions in the OpenClaw workspace `AGENTS.md`/Tools section rather than changing project policy.

## Files here

- `AGENTS.md` — workspace adapter that points to the project contract.
- `SOUL.md` — minimal persona template.
- `IDENTITY.md` — identity placeholders.
- `USER.md.example` — intentionally non-personal example; copy privately and customize.
- `MEMORY.md.example` — optional private-memory skeleton.

Do not commit `~/.openclaw/`, credentials, auth profiles, session databases, raw chats, or secrets.
