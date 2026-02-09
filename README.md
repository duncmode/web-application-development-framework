# Web Application Development Framework

A reusable framework for AI-accelerated software development. Provides structure, conventions, and workflow automation for building web applications with AI agents.

## Structure

```
framework/
├── modules/          # Swappable guidelines and standards
├── templates/        # Project and task scaffolding
├── skills/           # Automatable workflow definitions
├── knowledge-base/   # Accumulated learnings across projects
├── scripts/          # Setup and utility scripts
└── ci-cd-pipelines/  # CI/CD pipeline templates
```

## Quick Start

Create a new project:

```bash
chmod +x scripts/setup.sh
./scripts/setup.sh my-project /path/to/my-project
```

This will:
- Scaffold the project directory with all required files and folders
- Link the project to this framework
- Initialize a git repo with main and staging branches

## How It Works

See `modules/ai-instructions.md` for the complete workflow documentation.

Projects reference this framework via a `.framework-path` file containing the path to this directory. AI agents read the framework modules for guidelines and the project's `.context/` directory for project-specific context.

## Modules

| Module | Purpose |
|---|---|
| ai-instructions.md | Operating manual for AI agents |
| coding-standards.md | Code style and conventions |
| testing-strategy.md | Testing approach and expectations |
| design-system.md | Design principles and visual standards |
| security-checklist.md | Security verification checklist |
| git-workflow.md | Branching, commits, and merge rules |
| review-checklist.md | Human review criteria |

## Customization

Projects can override any module by placing a file with the same name in their `.overrides/` directory. The project override takes precedence over the framework default.

## Naming Convention

All file and directory names should be human-readable and easy to understand — treat them like function or variable names in code. Avoid abbreviations and generic names.
