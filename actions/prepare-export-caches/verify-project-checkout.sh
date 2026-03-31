#!/usr/bin/env bash

set -euo pipefail

project_root="${1:-.}"

for path in \
  "$project_root/project.godot" \
  "$project_root/addons/gdUnit4/plugin.cfg" \
  "$project_root/addons/gdUnit4/runtest.sh"; do
  if [ ! -e "$path" ]; then
    echo "ERROR: Required project path missing from checkout: $path"
    exit 1
  fi
done
