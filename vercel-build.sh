#!/bin/bash
set -e

echo "Updating submodules..."
git submodule update --init --recursive --remote

echo "Building project..."
pnpm run build
