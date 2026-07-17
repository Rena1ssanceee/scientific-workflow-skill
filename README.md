# scientific-workflow-skill

A Codex skill pack installer for scientific research workflows.

This repository installs a router skill named `scientific-workflow` and fetches selected third-party scientific skills from their original repositories.

## Workflow modes

The local router supports two modes:

1. **Ordinary scientific workflow** for bounded tasks such as brainstorming, literature review, statistical analysis, figure planning, writing, polishing, or reviewer-style critique.
2. **Evidence-driven literature survey and research planning** for projects that require comprehensive literature retrieval, uploaded full-text review, existing-data auditing, candidate-direction evaluation, and one final research plan.

The second mode includes modular references and templates for:

- high-recall, multi-source literature search and comprehensive master-list construction within a frozen scope;
- full-text evidence extraction;
- project-specific auditing of the actual data situation;
- analytical-unit, dependency, chronology, and label verification when relevant;
- candidate-direction selection;
- v3-style formal reports;
- evidence matrices;
- figure and technical-route planning;
- final scientific quality control.

## Included skills

From `K-Dense-AI/scientific-agent-skills`:

- `scientific-brainstorming`
- `literature-review`
- `statistical-analysis`

From `Yuan1z0825/nature-skills`:

- `nature-shared`
- `nature-academic-search`
- `nature-figure`
- `nature-writing`
- `nature-polishing`
- `nature-reviewer`

Local router skill:

- `scientific-workflow`

## Install

```bash
git clone https://github.com/Rena1ssanceee/scientific-workflow-skill.git
cd scientific-workflow-skill
chmod +x install.sh check.sh
./install.sh
./check.sh
```

By default, skills are installed to:

```bash
$HOME/.agents/skills
```

You can override the install location:

```bash
AGENTS_SKILLS_DIR="$HOME/.agents/skills" ./install.sh
```

or:

```bash
CODEX_SKILLS_DIR="$HOME/.codex/skills" ./install.sh
```

## What this repository does

This repository provides:

1. A local router skill named `scientific-workflow`.
2. Modular evidence-planning references and report templates.
3. An installation script for selected upstream scientific skills.
4. A check script to verify whether expected skills and local workflow files were installed.
5. Manifest files that record included skills and upstream sources.

It does not claim authorship of third-party skills.

## License and attribution

This repository is an installer and integration layer.

The local files in this repository, including `install.sh`, `check.sh`, `README.md`, manifests, templates, references, and the `scientific-workflow` router skill, are released under the license of this repository.

Third-party skills are fetched from their original repositories and remain under their original licenses. Please check the upstream repositories for their latest license terms:

- https://github.com/K-Dense-AI/scientific-agent-skills
- https://github.com/Yuan1z0825/nature-skills
