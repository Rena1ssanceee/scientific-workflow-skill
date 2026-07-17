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
  "nature-shared"
)

workflow_support_files=(
  "references/evidence-based-planning-workflow.md"
  "references/literature-search-protocol.md"
  "references/full-text-evidence-extraction.md"
  "references/data-audit-checklist.md"
  "references/candidate-direction-evaluation.md"
  "references/quality-control.md"
  "templates/v3-style-report-outline.md"
  "templates/literature-list-template.md"
  "templates/evidence-matrix-template.md"
  "templates/figure-plan-template.md"
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

for file in "${workflow_support_files[@]}"; do
  if [ -f "$SKILL_ROOT/scientific-workflow/$file" ]; then
    echo "OK: scientific-workflow/$file"
  else
    echo "MISSING: scientific-workflow/$file"
    missing=1
  fi
done

echo ""

if [ "$missing" -eq 0 ]; then
  echo "All expected skills and workflow support files are installed."
else
  echo "Some skills or workflow support files are missing. Re-run ./install.sh and check the error messages."
  exit 1
fi
