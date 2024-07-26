#!/bin/sh

# Check if PROJECT_ROOT is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <project_root>"
  exit 1
fi

PROJECT_ROOT=$1

cp BLANK_README.md "$PROJECT_ROOT/README.md"
cp -r .github "$PROJECT_ROOT"
cp -r readme-assets "$PROJECT_ROOT"
