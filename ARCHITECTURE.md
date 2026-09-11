# Architecture

## Overview

[One-paragraph description of the system and its major boundaries.]

## Context

```text
[User / external systems]
        |
        v
[Application / service]
        |
        v
[Data / APIs / infrastructure]
```

## Components

| Component | Responsibility | Interfaces | Owner/source of truth |
|---|---|---|---|
| [name] | [purpose] | [API/events/files] | [location] |

## Data and State

- System of record: [location]
- Persistent state: [location]
- Cache/derived state: [location]
- Secrets: [secret manager/environment; never repository]

## Trust Boundaries

[Authentication, authorization, sensitive-data boundaries, external services.]

## Important Flows

### [Flow name]

1. [step]
2. [step]
3. [step]

## Reliability and Failure Modes

- [failure mode] → [handling/recovery]

## Observability

- Logs: [strategy]
- Metrics: [strategy]
- Health checks: [strategy]

## Decisions

Durable architecture choices belong in `docs/decisions/` as ADRs rather than being buried here.
