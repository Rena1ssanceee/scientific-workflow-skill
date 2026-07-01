#!/usr/bin/env bash
set -euo pipefail

SKILL_ROOT="${AGENTS_SKILLS_DIR:-${CODEX_SKILLS_DIR:-$HOME/.agents/skills}}"

skills_with_skill_md=(
  "scientific-workflow"
  "scientific-brainstorming"
  "literature-review"
  "statistical-analysis"
  "nature-academic-search"
  "nature-figure"
  "nature-writing"
  "nature-polishing"
  "nature-reviewer"
)

shared_dirs=(
  "_shared"
)

missing=0

echo "Checking skill root: $SKILL_ROOT"
echo ""

if [ ! -d "$SKILL_ROOT" ]; then
  echo "ERROR: skill root does not exist: $SKILL_ROOT"
  exit 1
fi

for skill in "${skills_with_skill_md[@]}"; do
  if [ -f "$SKILL_ROOT/$skill/SKILL.md" ]; then
    echo "OK: $skill/SKILL.md"
  else
    echo "MISSING: $skill/SKILL.md"
    missing=1
  fi
done

for dir in "${shared_dirs[@]}"; do
  if [ -d "$SKILL_ROOT/$dir" ]; then
    echo "OK: $dir/"
  else
    echo "MISSING: $dir/"
    missing=1
  fi
done

echo ""

if [ "$missing" -eq 0 ]; then
  echo "All expected skills are installed."
else
  echo "Some skills are missing. Re-run ./install.sh and check the error messages."
  exit 1
fi
