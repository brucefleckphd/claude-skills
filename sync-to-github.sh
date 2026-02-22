#!/bin/bash
# Sync Claude skills to GitHub
# Usage: ~/.claude/sync-to-github.sh [optional commit message]

TIMESTAMP=$(date "+%Y-%m-%d %H:%M")
MSG="${1:-Auto-sync: $TIMESTAMP}"

cd ~/.claude || { echo "ERROR: ~/.claude not found"; exit 1; }

# Check for changes
if [[ -z $(git status --porcelain) ]]; then
    echo "No changes to sync."
    exit 0
fi

git add skills/ agents/ CLAUDE.md .gitignore sync-to-github.sh 2>/dev/null
git add "$(ls ~/.claude/*.md 2>/dev/null)" 2>/dev/null || true
git commit -m "$MSG"
git push origin main

echo "Synced to GitHub at $TIMESTAMP"
