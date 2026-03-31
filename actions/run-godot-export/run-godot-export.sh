#!/usr/bin/env bash
set -euo pipefail

mkdir -v -p "build/$(dirname "$GODOT_OUTPUT_SUBPATH")"
export_dir="$(readlink -f build)"
output_file="$export_dir/$GODOT_OUTPUT_SUBPATH"

cd "$PROJECT_PATH"
HOME=/root godot --headless --verbose --export-release \
  "$GODOT_EXPORT_PRESET" "$output_file"
