# Review Checklist

<!-- This module defines what humans check during review. -->
<!-- AI agents read this to understand what reviewers will look for. -->
<!-- Can be overridden per-project via .overrides/review-checklist.md -->

## Purpose

This checklist helps human reviewers evaluate work efficiently and consistently. AI agents should also use this to self-check before marking work as ready for review.

## Functional Review

- [ ] Does the implementation match the requirements in context.md?
- [ ] Do all acceptance criteria pass?
- [ ] Are edge cases handled?
- [ ] Are error states handled gracefully (user-facing errors are helpful, not cryptic)?

## Code Quality

- [ ] Is the code readable and well-organized?
- [ ] Does it follow established patterns in the codebase?
- [ ] Are there any unnecessary complexity or over-engineering?
- [ ] Are new dependencies justified?
- [ ] Is there dead code or commented-out code that should be removed?

## Testing

- [ ] Are there meaningful tests for new functionality?
- [ ] Do all tests pass?
- [ ] Are test names descriptive?
- [ ] Is the test coverage proportional to the risk of the change?

## UI/UX (if applicable)

- [ ] Does the UI match the design/mockups?
- [ ] Is the UI responsive at mobile, tablet, and desktop?
- [ ] Are loading and empty states handled?
- [ ] Is the UI accessible (keyboard navigation, screen reader friendly)?

## Security

- [ ] No hardcoded secrets or credentials?
- [ ] Inputs validated on the server side?
- [ ] Auth/authz enforced where needed?
- [ ] No sensitive data in logs or error messages?

## Documentation

- [ ] changelog.md is updated with decisions and notable changes?
- [ ] Code comments explain non-obvious logic?
- [ ] API changes are documented?

## Performance

- [ ] No obvious performance issues (N+1 queries, unnecessary re-renders, large bundle additions)?
- [ ] Database queries are indexed appropriately (if applicable)?

---

*This is a starting template. Update based on team review preferences.*
