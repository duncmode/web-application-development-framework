# Security Checklist

<!-- This module defines security requirements and checks. -->
<!-- Read by AI agents during verification (Phase 4). -->
<!-- Can be overridden per-project via .overrides/security-checklist.md -->

## Authentication and Authorization

- [ ] Authentication is enforced on all protected routes
- [ ] Authorization checks verify the user has permission for the specific action
- [ ] Session tokens have appropriate expiry
- [ ] Password requirements meet current best practices (if applicable)
- [ ] Failed login attempts are rate-limited
- [ ] Logout properly invalidates the session

## Data Handling

- [ ] No secrets, API keys, or credentials are hardcoded in source code
- [ ] Secrets are stored in environment variables or a secrets manager
- [ ] .env files are in .gitignore
- [ ] Sensitive data is encrypted at rest and in transit
- [ ] PII is handled according to applicable regulations
- [ ] Database queries use parameterized statements (no SQL injection risk)

## Input Validation

- [ ] All user inputs are validated on the server side (client validation is not sufficient)
- [ ] File uploads are validated for type, size, and content
- [ ] URLs and redirects are validated to prevent open redirect attacks
- [ ] Rich text inputs are sanitized to prevent XSS

## API Security

- [ ] API endpoints validate authentication and authorization
- [ ] Rate limiting is applied to public-facing endpoints
- [ ] CORS is configured restrictively (not wildcard in production)
- [ ] Error responses don't leak internal details (stack traces, DB schemas, etc.)
- [ ] API responses don't include more data than the client needs

## Dependencies

- [ ] `npm audit` (or equivalent) shows no high or critical vulnerabilities
- [ ] Dependencies are pinned to specific versions
- [ ] No unnecessary dependencies are installed

## Deployment

- [ ] HTTPS is enforced
- [ ] Security headers are configured (CSP, HSTS, X-Frame-Options, etc.)
- [ ] Source maps are not exposed in production
- [ ] Debug/development modes are disabled in production
- [ ] Admin interfaces are not publicly accessible

## General

- [ ] No TODO or FIXME comments related to security are left unresolved
- [ ] Logging does not capture sensitive data (passwords, tokens, PII)
- [ ] Error handling doesn't expose internal system details to users

---

*This is a starting template. Update based on project-specific security requirements.*
