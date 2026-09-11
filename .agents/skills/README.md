# Project-Local Skills

Put reusable, project-specific agent procedures here when a workflow is complex enough to deserve a named skill.

A good skill is:

- narrow and triggerable;
- procedural rather than a duplicate of `AGENTS.md`;
- explicit about inputs, outputs, safety boundaries, and verification;
- backed by scripts/templates when deterministic automation is possible.

Suggested structure:

```text
.agents/skills/<skill-name>/
  SKILL.md
  scripts/
  templates/
  references/
```

Keep universal repository policy in root `AGENTS.md`; keep implementation knowledge close to the code when possible.
