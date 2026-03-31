#!/usr/bin/env bash
set -euo pipefail

templates_root="${HOME}/.local/share/godot/export_templates"
version="${GODOT_VERSION}"
stable_dir="${templates_root}/${version}.stable"

if [ -d "$stable_dir" ] || [ -L "$stable_dir" ]; then
  echo "Stable template directory already present: $stable_dir"
  exit 0
fi

fallback=""
for candidate in \
  "${templates_root}/${version}.rc"* \
  "${templates_root}/${version}.beta"* \
  "${templates_root}/${version}.alpha"* \
  "${templates_root}/${version}.dev"* \
  "${templates_root}/${version}."*; do
  if [ -d "$candidate" ]; then
    fallback="$candidate"
    break
  fi
done

if [ -z "$fallback" ]; then
  echo "No fallback template directory found for ${version}.*"
  exit 0
fi

ln -s "$fallback" "$stable_dir"
echo "Created stable template alias: $stable_dir -> $fallback"
