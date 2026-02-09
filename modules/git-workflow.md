# Git Workflow

<!-- This module defines branching strategy, commit conventions, and merge rules. -->
<!-- Referenced throughout the task lifecycle. -->
<!-- Can be overridden per-project via .overrides/git-workflow.md -->

## Branch Structure

```
main              ← production code, only humans merge here
  │
  └── staging     ← integration testing, merged via PR from feature branches
        │
        └── feature/[TASK-ID]-[description]  ← all AI work happens here
```

## Rules

- AI agents never push to or merge into `main`
- AI agents never push directly to `staging` — always via PR
- All work happens on feature branches
- One feature branch per task (1:1 mapping)
- Feature branches are created from `staging` (or `main` if staging doesn't exist yet)

## Branch Naming

```
feature/[TASK-ID]-[short-description]
```

Examples:
- `feature/001-user-auth`
- `feature/012-dashboard-charts`
- `feature/003-stripe-integration`

## Commit Conventions

Follow conventional commits format:

```
type: brief description

[optional body with context]
```

**Types:**
- `feat` — new feature or functionality
- `fix` — bug fix
- `test` — adding or updating tests
- `refactor` — code change that doesn't add features or fix bugs
- `docs` — documentation changes
- `chore` — dependency updates, config changes, maintenance

**Commit frequency:** After each logical unit of work. One sentence should describe the commit. Don't batch unrelated changes.

## Pull Request Process

1. AI pushes feature branch to GitHub
2. AI creates PR targeting `staging`
3. PR description follows the template in ai-instructions.md Section 7
4. Human reviews and merges the PR
5. After staging testing, human merges `staging` to `main`

## Merge Strategy

- Use squash merge for feature → staging (clean history)
- Use regular merge for staging → main (preserve the merge point)

---

*This is a starting template. Adjust merge strategy based on team preference.*
