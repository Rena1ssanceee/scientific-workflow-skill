#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_ROOT="${AGENTS_SKILLS_DIR:-${CODEX_SKILLS_DIR:-$HOME/.agents/skills}}"

KDENSE_REPO="https://github.com/K-Dense-AI/scientific-agent-skills.git"
NATURE_REPO="https://github.com/Yuan1z0825/nature-skills.git"

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

require_cmd() {
  if ! command -v "$1" >/dev/null 2>&1; then
    echo "ERROR: required command not found: $1"
    exit 1
  fi
}

copy_dir() {
  local src="$1"
  local dst_name="$2"
  local dst="$SKILL_ROOT/$dst_name"

  if [ ! -d "$src" ]; then
    echo "ERROR: source directory not found: $src"
    exit 1
  fi

  rm -rf "$dst"
  mkdir -p "$SKILL_ROOT"
  cp -R "$src" "$dst"

  echo "Installed: $dst_name"
}

require_cmd git
require_cmd cp
require_cmd rm
require_cmd mkdir

echo "Installing skills to: $SKILL_ROOT"
mkdir -p "$SKILL_ROOT"

echo "Cloning upstream repositories..."
git clone --depth 1 "$KDENSE_REPO" "$TMP_DIR/scientific-agent-skills"
git clone --depth 1 "$NATURE_REPO" "$TMP_DIR/nature-skills"

KDENSE_DIR="$TMP_DIR/scientific-agent-skills"
NATURE_DIR="$TMP_DIR/nature-skills"

echo "Installing local router skill..."
copy_dir "$SCRIPT_DIR/skills/scientific-workflow" "scientific-workflow"

echo "Installing K-Dense scientific skills..."
copy_dir "$KDENSE_DIR/skills/scientific-brainstorming" "scientific-brainstorming"
copy_dir "$KDENSE_DIR/skills/literature-review" "literature-review"
copy_dir "$KDENSE_DIR/skills/statistical-analysis" "statistical-analysis"

echo "Installing Nature skills..."
copy_dir "$NATURE_DIR/skills/_shared" "_shared"
copy_dir "$NATURE_DIR/skills/nature-academic-search" "nature-academic-search"
copy_dir "$NATURE_DIR/skills/nature-figure" "nature-figure"
copy_dir "$NATURE_DIR/skills/nature-writing" "nature-writing"
copy_dir "$NATURE_DIR/skills/nature-polishing" "nature-polishing"
copy_dir "$NATURE_DIR/skills/nature-reviewer" "nature-reviewer"

echo ""
echo "Installation finished."
echo "Run ./check.sh to verify the installation."
