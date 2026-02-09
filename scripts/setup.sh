#!/bin/bash

# Project Setup Script
# Usage: ./setup.sh <project-name> <project-directory>
# Example: ./setup.sh my-app /Users/duncan/Programming/my-app

set -e

PROJECT_NAME=$1
PROJECT_DIR=$2
FRAMEWORK_DIR="$(cd "$(dirname "$0")/.." && pwd)"

if [ -z "$PROJECT_NAME" ] || [ -z "$PROJECT_DIR" ]; then
  echo "Usage: ./setup.sh <project-name> <project-directory>"
  echo "Example: ./setup.sh my-app /Users/duncan/Programming/my-app"
  exit 1
fi

if [ -d "$PROJECT_DIR" ]; then
  echo "Error: Directory $PROJECT_DIR already exists."
  exit 1
fi

echo "Setting up project: $PROJECT_NAME"
echo "Directory: $PROJECT_DIR"
echo "Framework: $FRAMEWORK_DIR"
echo ""

# Copy project scaffold
echo "→ Copying project scaffold..."
cp -r "$FRAMEWORK_DIR/templates/project-scaffold" "$PROJECT_DIR"

# Set the framework path
echo "$FRAMEWORK_DIR" > "$PROJECT_DIR/.framework-path"

# Create tasks directory (won't be in scaffold since it's empty)
mkdir -p "$PROJECT_DIR/tasks"

# Create .gitkeep files for empty directories so git tracks them
touch "$PROJECT_DIR/.overrides/.gitkeep"
touch "$PROJECT_DIR/tasks/.gitkeep"
touch "$PROJECT_DIR/learnings/retrospectives/.gitkeep"

# Initialize git repo
echo "→ Initializing git repository..."
cd "$PROJECT_DIR"
git init
git checkout -b main

# Create .gitignore
cat > .gitignore << 'EOF'
# Dependencies
node_modules/
.pnp
.pnp.js

# Build
.next/
out/
build/
dist/

# Environment
.env
.env.local
.env.development.local
.env.test.local
.env.production.local

# Debug
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# IDE
.idea/
*.swp
*.swo

# OS
.DS_Store
Thumbs.db

# Vercel
.vercel

# TypeScript
*.tsbuildinfo
next-env.d.ts
EOF

# Create staging branch
git add .
git commit -m "chore: initial project scaffold from framework"
git checkout -b staging
git checkout main

echo ""
echo "✓ Project '$PROJECT_NAME' created at $PROJECT_DIR"
echo "✓ Git initialized with main and staging branches"
echo "✓ Framework linked at $FRAMEWORK_DIR"
echo ""
echo "Next steps:"
echo "  1. Fill in .ctx/ files with project context"
echo "  2. Add items to roadmap.md"
echo "  3. Set up your application in src/"
echo "  4. Create a GitHub repo and push"
