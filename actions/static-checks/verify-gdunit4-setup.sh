#!/usr/bin/env bash

set -euo pipefail

project_root="${1:-.}"

if [ ! -f "$project_root/addons/gdUnit4/plugin.cfg" ]; then
  echo "ERROR: Vendored GDUnit4 subtree is missing from checkout at $project_root/addons/gdUnit4."
  exit 1
fi

if [ ! -f "$project_root/addons/gdUnit4/runtest.sh" ]; then
  echo "ERROR: Vendored GDUnit4 runner is missing from checkout at $project_root/addons/gdUnit4/runtest.sh."
  exit 1
fi
