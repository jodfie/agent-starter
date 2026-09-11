# Agent Starter

A reusable, agent-first GitHub project template for OpenAI Codex, OpenClaw, Claude Code, and humans.

The goal: create a new repository from this template, describe the project once, and give an agent enough structure to plan, implement, verify, document, and hand off work without inventing a new operating system for every project.

## Design principles

- **One canonical contract:** `AGENTS.md` owns repository-wide agent policy.
- **Tool adapters, not duplicated policy:** `CLAUDE.md` and OpenClaw files point back to the canonical contract.
- **Evidence over claims:** completion requires appropriate verification.
- **Durable continuity:** mission, decisions, active tasks, and handoff state survive context resets and agent changes.
- **Safe autonomy:** routine reversible work proceeds; consequential external/destructive actions have approval boundaries.
- **Progressive disclosure:** root files stay concise; detailed plans, decisions, skills, and evidence live in dedicated directories.

## Start a project

1. Use this repository as a GitHub template or copy it into a new repository.
2. Replace placeholders in `MISSION.md`.
3. Update `README.md` and `ARCHITECTURE.md` as the project becomes known.
4. Put the first objective and acceptance criteria in `tasks/ACTIVE.md`.
5. Open the repository in Codex, Claude Code, or your preferred agent and ask it to execute the mission.
6. For OpenClaw, see `openclaw/README.md` before copying workspace-specific persona/memory files.

## Repository map

```text
AGENTS.md                  canonical cross-agent operating contract
CLAUDE.md                  Claude Code adapter
MISSION.md                 project intent, constraints, success criteria
ARCHITECTURE.md            architecture and system boundaries
ROADMAP.md                 outcome-oriented milestones
HANDOFF.md                 compact cross-session/agent transfer state
SECURITY.md                security/secret-handling baseline

.codex/                    Codex configuration/examples
.agents/skills/            reusable project-local skills
.github/                   PR template and CI
docs/decisions/            architecture decision records (ADRs)
docs/plans/                durable implementation plans
tasks/                     active/backlog/completed continuity
evidence/                  durable verification evidence
scripts/                   bootstrap, doctor, verify, cleanup helpers
openclaw/                  optional OpenClaw workspace overlay/templates
```

## Canonical instruction model

`AGENTS.md` is the source of truth. Do not maintain separate copies of the same rules for every model. Tool-specific files should contain only tool-specific behavior and refer back to `AGENTS.md`.

Nested `AGENTS.md` files may be added when a monorepo/package genuinely needs narrower instructions.

## OpenClaw note

An OpenClaw **agent workspace is not the same thing as a source-code repository**. Its workspace can contain persona, user, and memory context that should usually remain private. This public template therefore keeps optional workspace starter files under `openclaw/` rather than treating `USER.md`, `MEMORY.md`, or private memory as public project files.

## Template bootstrap prompt

> Bootstrap this repository for the project described in MISSION.md. Inspect the existing template, convert placeholders into project-specific content, establish explicit acceptance criteria, create an implementation plan if needed, then implement and verify the highest-priority active objective. Preserve AGENTS.md as the canonical operating contract and do not claim completion without evidence.

## License

Choose the license appropriate to each project created from this template.
