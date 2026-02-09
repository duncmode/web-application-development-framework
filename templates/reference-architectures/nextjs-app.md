# Reference Architecture: Next.js Application

This document shows the complete directory and file structure for a Next.js project using this framework. It combines the framework's project scaffold with a typical Next.js App Router application structure.

Use this as a reference when setting up a new Next.js project. Not every file or directory will be needed for every project — adapt based on scope and complexity.

---

## Full Project Structure

```
my-project/
│
│   ── Framework Layer ──────────────────────────────────────
│
├── .context/                           # Project context for AI agents
│   ├── project-brief.md                # What we're building and why
│   ├── architecture.md                 # Technical architecture and key decisions
│   ├── design-guidance.md              # Design system, visual standards, tokens
│   ├── environment.md                  # Environment setup, secrets, deployment config
│   └── stakeholders.md                 # Team members, roles, communication preferences
│
├── .overrides/                         # Project-specific overrides for framework modules
│   └── (e.g., design-system.md)        # Only add files where you diverge from defaults
│
├── tasks/                              # One folder per roadmap item
│   ├── 001-user-auth/
│   │   ├── context.md                  # Requirements, acceptance criteria
│   │   ├── plan.md                     # AI's execution plan (approved by human)
│   │   ├── changelog.md               # Decisions, issues, notable changes
│   │   ├── verification.md            # Test results, AC sign-off
│   │   └── feedback/
│   │       ├── round-1.md             # Organized feedback from human review
│   │       └── attachments/           # Screenshots, recordings, reference files
│   └── 002-dashboard/
│       └── ...
│
├── learnings/
│   ├── retrospectives/                 # Post-task retrospectives
│   │   └── 001-user-auth-retro.md
│   └── improvements.md                # Queued improvements to system/context
│
├── roadmap.md                          # Single source of truth for task status
├── ai-entry.md                         # Canonical AI agent instructions
├── CLAUDE.md                           # Thin adapter for Claude Code
├── .cursorrules                        # Thin adapter for Cursor
├── .framework-path                     # Path to the shared framework directory
│
│   ── Application Layer ────────────────────────────────────
│
├── src/
│   ├── app/                            # Next.js App Router
│   │   ├── layout.tsx                  # Root layout
│   │   ├── page.tsx                    # Home page
│   │   ├── globals.css                 # Global styles and Tailwind imports
│   │   ├── not-found.tsx               # Custom 404 page
│   │   ├── error.tsx                   # Global error boundary
│   │   │
│   │   ├── (auth)/                     # Route group: authentication pages
│   │   │   ├── login/
│   │   │   │   └── page.tsx
│   │   │   ├── signup/
│   │   │   │   └── page.tsx
│   │   │   └── layout.tsx              # Shared layout for auth pages
│   │   │
│   │   ├── dashboard/                  # Protected route
│   │   │   ├── page.tsx
│   │   │   ├── loading.tsx             # Loading state
│   │   │   └── settings/
│   │   │       └── page.tsx
│   │   │
│   │   └── api/                        # API routes (if needed alongside external API)
│   │       └── webhooks/
│   │           └── stripe/
│   │               └── route.ts
│   │
│   ├── features/                       # Feature-based organization
│   │   ├── auth/
│   │   │   ├── components/
│   │   │   │   ├── login-form.tsx
│   │   │   │   ├── login-form.test.tsx
│   │   │   │   ├── signup-form.tsx
│   │   │   │   └── signup-form.test.tsx
│   │   │   ├── hooks/
│   │   │   │   ├── use-auth.ts
│   │   │   │   └── use-auth.test.ts
│   │   │   ├── services/
│   │   │   │   ├── auth-service.ts
│   │   │   │   └── auth-service.test.ts
│   │   │   ├── types.ts
│   │   │   └── index.ts                # Re-exports only
│   │   │
│   │   └── dashboard/
│   │       ├── components/
│   │       │   ├── dashboard-summary.tsx
│   │       │   └── dashboard-summary.test.tsx
│   │       ├── hooks/
│   │       │   └── use-dashboard-data.ts
│   │       ├── services/
│   │       │   └── dashboard-service.ts
│   │       ├── types.ts
│   │       └── index.ts
│   │
│   ├── components/                     # Shared UI components
│   │   ├── ui/                         # Base UI primitives (button, input, card, etc.)
│   │   │   ├── button.tsx
│   │   │   ├── button.test.tsx
│   │   │   ├── input.tsx
│   │   │   ├── card.tsx
│   │   │   └── modal.tsx
│   │   ├── layout/                     # Layout components (header, footer, sidebar)
│   │   │   ├── header.tsx
│   │   │   ├── footer.tsx
│   │   │   └── sidebar.tsx
│   │   └── common/                     # Shared composite components
│   │       ├── data-table.tsx
│   │       └── empty-state.tsx
│   │
│   ├── hooks/                          # Shared hooks
│   │   ├── use-debounce.ts
│   │   └── use-media-query.ts
│   │
│   ├── lib/                            # Shared utilities and configuration
│   │   ├── utils.ts                    # General utility functions
│   │   ├── constants.ts                # App-wide constants
│   │   ├── api-client.ts              # HTTP client configuration
│   │   └── validators.ts              # Shared validation schemas (e.g., Zod)
│   │
│   ├── types/                          # Shared TypeScript types
│   │   ├── api.ts                      # API request/response types
│   │   └── common.ts                   # Common types used across features
│   │
│   └── middleware.ts                   # Next.js middleware (auth, redirects, etc.)
│
├── tests/                              # End-to-end and integration tests
│   ├── e2e/
│   │   ├── auth.spec.ts               # E2E test for auth flow
│   │   └── dashboard.spec.ts
│   └── fixtures/                       # Shared test data and utilities
│       ├── test-data.ts
│       └── test-helpers.ts
│
├── public/                             # Static assets served at root
│   ├── favicon.ico
│   ├── og-image.png
│   └── images/
│
├── docs/                               # User-facing or developer documentation
│   └── api.md
│
│   ── Configuration ────────────────────────────────────────
│
├── .github/
│   └── workflows/                      # CI/CD pipelines (copied from framework)
│       ├── feature-branch.yml
│       ├── staging.yml
│       └── production.yml
│
├── .env.example                        # Template for environment variables (committed)
├── .env.local                          # Local environment variables (gitignored)
├── .gitignore
├── .eslintrc.json                      # ESLint configuration
├── next.config.ts                      # Next.js configuration
├── tailwind.config.ts                  # Tailwind CSS configuration
├── tsconfig.json                       # TypeScript configuration
├── playwright.config.ts               # E2E test configuration (if using Playwright)
├── vitest.config.ts                    # Unit test configuration (if using Vitest)
├── package.json
├── package-lock.json
└── README.md                           # Project-level README
```

---

## Key Principles

**Feature-based organization in `src/features/`.** Each feature contains its own components, hooks, services, types, and tests. This keeps related code together and makes it easy to understand the scope of a feature. Shared code that's used across multiple features goes in `src/components/`, `src/hooks/`, `src/lib/`, or `src/types/`.

**Tests live next to the code they test.** Unit and component tests are co-located: `login-form.tsx` and `login-form.test.tsx` live in the same directory. End-to-end tests are the exception — they live in `tests/e2e/` because they test across features.

**`src/app/` is thin.** Pages in the App Router should primarily compose components from `src/features/` and `src/components/`. Business logic, data fetching, and complex UI should live in the feature directories, not in the page files.

**Separation between framework and application.** Everything above the "Application Layer" line is managed by the development framework. Everything below it is the actual application code. They coexist in the same repo but serve different purposes.

---

## Notes

- Not every directory is needed from day one. Start with what the first few tasks require and let the structure grow organically.
- The `src/features/` pattern scales well. As the app grows, each feature stays self-contained.
- If a component starts in a feature directory and later gets used by multiple features, promote it to `src/components/`.
- Index files (`index.ts`) in feature directories should only re-export — never put logic in them.
