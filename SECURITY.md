# Security

## Secrets

Never commit credentials, API keys, tokens, private keys, production `.env` files, or OpenClaw runtime/auth state. Use environment variables or an approved secret manager. Commit only documented examples/placeholders.

## Dependency Changes

Prefer maintained dependencies with clear provenance. Avoid adding a dependency when the platform or existing stack already provides the capability. Pin/lock dependencies according to the ecosystem and review major supply-chain implications.

## Sensitive Data

Collect and retain the minimum data required. Do not put real sensitive/private data into fixtures, logs, screenshots, issues, or verification evidence.

## Reporting

For a project created from this template, replace this section with the project's security-reporting contact/process before public release.

## Agent Operations

Agents must follow the approval boundaries in `AGENTS.md` and `MISSION.md`. Security controls, tests, authentication, authorization, validation, or audit logging must not be silently disabled to unblock implementation.
