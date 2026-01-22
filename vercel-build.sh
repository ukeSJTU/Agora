#!/bin/bash
set -e

if [ -n "$GITHUB_TOKEN" ]; then
    git config --global url."https://${GITHUB_TOKEN}@github.com/".insteadOf "https://github.com/"
    echo "✅ GitHub token configured"
else
    echo "⚠️ Warning: GITHUB_TOKEN not found, may fail for private repos"
fi

echo "Updating submodules..."
git submodule update --init --recursive --remote

echo "Building project..."
pnpm run build
