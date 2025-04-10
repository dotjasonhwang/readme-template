#!/bin/sh

# Get the directory of the script
SCRIPT_DIR=$(dirname "$(realpath "$0")")

# Check if PROJECT_ROOT is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <project_root> [optional_readme_file]"
  exit 1
fi

PROJECT_ROOT=$1
TEMPLATE_README=${2:-"$SCRIPT_DIR/BLANK_README.md"}

cp "$TEMPLATE_README" "$PROJECT_ROOT/README.md"
cp -r "$SCRIPT_DIR/.github" "$PROJECT_ROOT"
cp -r "$SCRIPT_DIR/readme-assets" "$PROJECT_ROOT"