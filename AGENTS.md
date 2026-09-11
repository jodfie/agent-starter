# AGENTS.md — Canonical Project Contract

This repository is designed to be operated by humans and coding agents including OpenAI Codex, OpenClaw, Claude Code, and compatible agent harnesses.

## Authority

1. The user's explicit current instruction wins.
2. This root `AGENTS.md` is the canonical repository-wide operating contract.
3. More-specific `AGENTS.md` files may add or override rules for their subtree.
4. `CLAUDE.md` and tool-specific files are adapters, not independent policy sources.
5. Architecture decisions recorded in `docs/decisions/` are authoritative until superseded.

Do not duplicate durable project policy across multiple agent files. Link back here instead.

## Mission

Read `MISSION.md` before substantial work. Convert ambiguous goals into explicit acceptance criteria. Optimize for a working, maintainable result rather than activity or output volume.

## Startup Protocol

Before making substantive changes:

1. Read `MISSION.md`, `README.md`, and `ARCHITECTURE.md` when present.
2. Inspect repository status, current branch, recent commits, and existing tests/build tooling.
3. Read `tasks/ACTIVE.md` and relevant ADRs/plans.
4. Search the codebase before assuming something is missing.
5. Prefer existing maintained libraries, APIs, plugins, and project patterns over unnecessary custom code.
6. State or record the intended acceptance criteria for non-trivial work.

Do not repeatedly reread large context files when the needed context is already available.

## Execution Rules

- Work autonomously through reversible implementation details.
- Prefer small, reviewable changes with clear boundaries.
- Preserve existing behavior unless the task intentionally changes it.
- Do not silently weaken tests, validation, security, privacy, auditability, or error handling to make work pass.
- Do not fabricate successful commands, test results, screenshots, logs, citations, or external actions.
- Never claim completion without verification evidence appropriate to the change.
- Keep generated artifacts and temporary files out of source control unless they are intentional deliverables.
- Avoid unrelated refactors during scoped work.

## Safety and Approval Boundary

Proceed without asking for routine, reversible repository edits and local tests.

Stop and obtain explicit approval before:

- destructive or difficult-to-reverse operations affecting user data or external systems;
- spending money or creating paid resources;
- publishing, deploying, releasing, or sending external communications unless already explicitly authorized;
- changing production credentials, access control, secrets, billing, or security policy;
- deleting persistent data or repositories;
- force-pushing shared branches or rewriting shared history.

Never commit secrets. Use environment variables, secret managers, or documented placeholders.

## Git Workflow

- Do not work directly on the protected/default branch when a feature branch is practical.
- Keep commits logically scoped and messages descriptive.
- Pull/rebase or otherwise reconcile current upstream state before final integration when appropriate.
- Do not overwrite unrelated user changes.
- Prefer pull requests for non-trivial changes.
- PR descriptions should explain: problem, approach, verification, risks, and follow-up work.

## Verification Contract

Before declaring a task complete, run the strongest relevant checks available, such as:

1. formatting/linting;
2. type/static checks;
3. targeted tests;
4. broader test suite when practical;
5. build/package validation;
6. security/secret checks when relevant;
7. a functional smoke test for user-visible behavior.

Record material verification in `evidence/` when the task, release process, or user requires durable proof. If a check cannot be run, say exactly what was not verified and why.

## Documentation and Decisions

- Keep `README.md` focused on humans getting started.
- Keep `ARCHITECTURE.md` focused on system boundaries and important flows.
- Use `docs/decisions/` for durable architectural decisions.
- Use `docs/plans/` for implementation plans that need to survive a session.
- Keep `HANDOFF.md` concise and useful when work will continue in another agent/session.
- Update documentation in the same change when behavior or interfaces materially change.

## Task Continuity

Use:

- `tasks/ACTIVE.md` — current objectives, acceptance criteria, blockers, next actions.
- `tasks/BACKLOG.md` — deferred work that is worth retaining.
- `tasks/COMPLETED.md` — concise completed milestones, not verbose logs.
- `HANDOFF.md` — current state when transferring work between agents or sessions.

Do not use these files as a substitute for Git history or issue tracking.

## Agent Delegation

When subagents are available:

- delegate bounded, parallelizable investigations or implementations;
- give each agent a precise objective, constraints, and expected output;
- avoid multiple agents editing the same files concurrently unless explicitly coordinated;
- independently review and integrate delegated results;
- the orchestrating agent remains responsible for final verification.

## Tools

Use the repository's existing toolchain first. Inspect before installing dependencies. Prefer deterministic, scriptable commands. Document environment-specific requirements rather than hard-coding machine-specific paths.

## Definition of Done

Work is done only when:

- acceptance criteria are satisfied;
- relevant tests/checks pass or limitations are explicitly documented;
- no known critical regression is left behind;
- documentation is updated where needed;
- the working tree contains only intentional changes;
- the final report identifies what changed and how it was verified.
