# Testing Strategy

<!-- This module defines how we test and verify work. -->
<!-- Read by AI agents before writing tests (Phase 3) and during verification (Phase 4). -->
<!-- Can be overridden per-project via .overrides/testing-strategy.md -->

## Testing Philosophy

- Tests exist to catch regressions and verify behavior, not to hit coverage numbers
- Test behavior, not implementation details — tests should survive refactors
- Every new feature needs tests. Every bug fix needs a test that would have caught it.
- Tests are documentation — a reader should understand what the code does by reading the tests

## Test Types and When to Use Them

### Unit Tests
- For pure functions, utilities, helpers, and business logic
- Should be fast, isolated, no external dependencies
- Tool: Vitest or Jest (check project config)

### Integration Tests
- For API routes, database interactions, service-to-service communication
- Test the contract between components, not internal behavior
- Mock external services, but use real database connections where feasible

### Component Tests
- For React components with meaningful logic or interaction
- Use React Testing Library — test from the user's perspective
- Don't test styling or layout — that's visual verification

### End-to-End Tests
- For critical user flows (auth, checkout, onboarding, etc.)
- Use Playwright or Cypress (check project config)
- Keep E2E tests focused — they're slow and brittle, so only cover the most important paths
- Run as part of CI, not as part of local development loop

## Coverage Expectations

- No hard coverage target — coverage is a signal, not a goal
- New code should have meaningful test coverage
- Critical paths (auth, payments, data mutations) must have thorough coverage
- Utility functions and pure logic should have near-complete coverage
- UI components need tests for interaction logic, not for rendering static content

## Test Organization

- Test files live adjacent to the code they test
- Name: `[filename].test.ts` or `[filename].test.tsx`
- Group tests by behavior: `describe('when user is logged in', () => { ... })`
- Use clear test names: `it('should redirect to login when session expires')`

## What NOT to Test

- Third-party library internals
- Static content or copy
- CSS/styling (use visual verification instead)
- Implementation details that could change without affecting behavior

---

*This is a starting template. Update based on project-specific needs and lessons learned.*
