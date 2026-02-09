# Coding Standards

<!-- This module defines the coding conventions, patterns, and practices for all projects. -->
<!-- Read by AI agents before writing any code (Phase 3 of the task lifecycle). -->
<!-- Can be overridden per-project via .overrides/coding-standards.md -->

## General Principles

- Write clear, readable code over clever code
- Follow existing patterns in the codebase — consistency matters more than personal preference
- Keep functions small and focused on a single responsibility
- Name things descriptively — a reader should understand purpose without reading the implementation
- Avoid premature abstraction — duplicate code is better than the wrong abstraction

## TypeScript / JavaScript

- Use TypeScript with strict mode enabled
- Prefer `const` over `let`, never use `var`
- Use explicit return types on exported functions
- Prefer named exports over default exports
- Use async/await over raw promises
- Handle errors explicitly — no silent catches

## React / Next.js

- Use functional components with hooks
- Keep components focused — if a component exceeds ~150 lines, consider splitting
- Co-locate related files (component, tests, styles) where the framework allows
- Use server components by default in Next.js App Router, client components only when needed
- Avoid prop drilling — use composition or context appropriately

## File Organization

- Group by feature, not by file type (e.g., `features/auth/` not `components/`, `hooks/`, `utils/`)
- Index files should only re-export, never contain logic
- Test files live adjacent to the code they test: `component.tsx` → `component.test.tsx`

## Comments and Documentation

- Code should be self-documenting — use comments to explain *why*, not *what*
- Document non-obvious business logic, workarounds, and known limitations
- Use JSDoc for exported functions that other developers will consume
- TODO comments must include a task reference: `// TODO(TASK-XXX): description`

## Dependencies

- Minimize external dependencies — evaluate whether the functionality justifies the dependency
- When adding a dependency, document the reason in changelog.md
- Prefer well-maintained, widely-used packages
- Pin dependency versions

---

*This is a starting template. Update based on project-specific needs and lessons learned.*
