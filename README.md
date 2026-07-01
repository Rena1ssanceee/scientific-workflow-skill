# scientific-workflow-skill

A Codex skill pack installer for scientific research workflows.

This repository installs a lightweight router skill named `scientific-workflow` and fetches selected third-party scientific skills from their original repositories.

## Included skills

From `K-Dense-AI/scientific-agent-skills`:

- `scientific-brainstorming`
- `literature-review`
- `statistical-analysis`

From `Yuan1z0825/nature-skills`:

- `_shared`
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
2. An installation script for selected upstream scientific skills.
3. A check script to verify whether the expected skills were installed.
4. Manifest files that record the included skills and their upstream sources.

It does not claim authorship of third-party skills.

## License and attribution

This repository is an installer and integration layer.

The local files in this repository, including `install.sh`, `check.sh`, `README.md`, manifests, and the `scientific-workflow` router skill, are released under the license of this repository.

Third-party skills are fetched from their original repositories and remain under their original licenses. Please check the upstream repositories for their latest license terms:

- https://github.com/K-Dense-AI/scientific-agent-skills
- https://github.com/Yuan1z0825/nature-skills
