#!/usr/bin/env bash
set -euo pipefail

expected="${GODOT_VERSION}.stable"
actual="$(godot --version | head -n 1)"

echo "Expected Godot runtime: $expected"
echo "Actual Godot runtime:   $actual"

if [[ "$actual" != "$expected"* ]]; then
  echo "ERROR: Godot runtime version mismatch."
  echo "The runtime binary does not match configured workflow inputs."
  exit 1
fi
