# scientific-workflow-skill

A Codex skill pack installer for scientific research workflows.

This repository installs a router skill named `scientific-workflow` and fetches selected third-party scientific skills from their original repositories.

## Workflow modes

The local router supports two complementary modes:

1. **Focused scientific task routing.** This mode is used for bounded tasks such as scientific brainstorming, literature review, statistical analysis, figure planning, manuscript writing, language polishing, or reviewer-style critique. When a user provides only a research topic and asks for possible ideas, hypotheses, or exploratory directions, the workflow routes primarily to the scientific brainstorming skill.

2. **Evidence-driven literature survey and research planning.** This mode is used when a project has a defined research topic together with concrete existing data, samples, results, experimental resources, public datasets, or other research materials, and the user needs a literature-grounded assessment of what can realistically be studied.

The evidence-driven mode follows a staged process:

1. Audit the actual project context and available data.
2. Define the literature-search scope, including the topic, time range, study objects, data types, methods, and eligibility criteria.
3. Conduct a high-recall, multi-source search and produce a deduplicated master literature list.
4. Identify priority papers and distinguish records with accessible full text from those requiring the user to obtain and upload PDFs.
5. Review the complete available full-text corpus and extract structured, traceable evidence.
6. Check the corpus for remaining coverage gaps and perform supplementary searches when necessary.
7. Evaluate candidate research directions against both the literature evidence and the actual data situation.
8. Select a defensible final direction and develop a coherent research plan.
9. Produce a structured scientific report, figure plan, technical route, limitations assessment, and final quality-control review.

The supporting references and templates cover:

- search-scope definition and reproducible search documentation;
- high-recall literature retrieval and comprehensive master-list construction;
- full-text evidence extraction and evidence-matrix development;
- project-specific auditing of the actual data situation;
- verification of analytical units, dependencies, chronology, labels, batches, and grouping rules when relevant;
- evidence-based comparison and selection of candidate research directions;
- structured scientific report and research-plan development;
- figure and technical-route planning;
- claim-to-source traceability and final scientific quality control.

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
