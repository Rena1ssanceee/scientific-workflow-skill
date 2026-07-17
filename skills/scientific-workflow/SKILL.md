---
name: scientific-workflow
description: Routes scientific tasks to specialist skills. Use its evidence-driven planning mode when a project has a defined research topic and concrete existing data, samples, results, or other research resources and the user wants comprehensive literature retrieval, data-situation auditing, feasible direction selection, or a final research plan. For topic-only idea generation without a concrete data context, route to scientific-brainstorming.
---

# Scientific Workflow

Use this skill as the main router for scientific work. The default semantic trigger for its evidence-driven planning mode is the combination of:

1. a defined research topic, object, or scientific question; and
2. concrete existing data, samples, experimental results, processed outputs, public datasets, materials, cohorts, images, sequences, measurements, or other research resources.

The evidence-driven mode is appropriate when the user wants those resources evaluated against the literature to determine feasible research directions or produce a final plan. The data description does not need to be complete at trigger time; the workflow begins by auditing the actual data situation.

This is a router and workflow-coordination skill. It must not reimplement specialist skills. It selects the appropriate mode, freezes project constraints, calls specialist skills in a controlled order, and checks that the final outputs are internally consistent.

## 1. Select the workflow mode

Choose one primary mode before doing substantive work.

### Mode A — Ordinary scientific workflow

Use when the user requests a bounded task such as a literature summary, statistical advice, figure planning, manuscript writing, polishing, or reviewer-style critique.

For open-ended idea generation based mainly on a topic, with no concrete existing data or research resources to audit, prefer `scientific-brainstorming`. A mere mention of a data type does not require Mode B when the requested task is narrow.

### Mode B — Evidence-driven literature survey and research planning

Use Mode B when both conditions are met:

1. the project has a defined topic, object, or scientific question together with concrete existing data or research resources; and
2. the user wants comprehensive literature mapping, data-grounded direction selection, comparison of feasible options, or a final research plan.

Typical semantic requests include:

- "I have existing data on this topic. Review the field comprehensively and determine what study is most feasible."
- "Map what has already been done, identify gaps that my current data can address, and recommend a final direction."
- "Build a comprehensive literature list first; I will provide the full texts before the final synthesis."
- "Compare several research directions and select the one best supported by my current data."
- "Use only the existing data; do not add new experiments, samples, or follow-up."
- "Avoid overlapping with specified teams, investigators, or published directions."
- "Use all relevant existing data in one coherent study."
- "Prepare a final literature-survey-and-research-plan report."

Use this routing boundary:

- topic only plus a request for ideas, hypotheses, or novel possibilities → `scientific-brainstorming`;
- topic plus concrete existing data or resources plus a request to determine what can be done → Mode B;
- existing data plus a narrow technical task → Mode A with the minimum required specialist skill;
- an existing manuscript or analysis plus editing, figure, statistical, or review requests → Mode A.

For Mode B, read and follow:

- `references/evidence-based-planning-workflow.md`
- `references/literature-search-protocol.md`
- `references/full-text-evidence-extraction.md`
- `references/data-audit-checklist.md`
- `references/candidate-direction-evaluation.md`
- `references/quality-control.md`
- `templates/v3-style-report-outline.md`

Use the remaining templates when the user requests a literature list, evidence matrix, or figure plan.

## 2. Specialist-skill routing

For research idea generation, novelty framing, hypothesis development, experimental logic, and project positioning, use:

- `scientific-brainstorming`

For literature review, evidence synthesis, research gaps, citation mapping, and structured academic summaries, use:

- `literature-review`

For academic search, DOI checking, bibliographic verification, and literature retrieval, use:

- `nature-academic-search`

For statistical analysis, data-structure auditing, experimental design, variable definition, model selection, significance testing, effect-size interpretation, and result validation, use:

- `statistical-analysis`

For scientific figure planning, visual storytelling, multi-panel figure logic, graphical abstract design, and Nature-style figure improvement, use:

- `nature-figure`

For manuscript and report writing, including title, abstract, introduction, methods, results, discussion, conclusion, cover letter, and response-to-reviewer drafts, use:

- `nature-writing`

For academic polishing, English refinement, clarity improvement, tone control, reduction of exaggerated claims, and removal of AI-like phrasing, use:

- `nature-polishing`

For reviewer-style critique, pre-submission checking, novelty assessment, logic evaluation, journal fit, and weakness detection, use:

- `nature-reviewer`

## 3. Routing order

### Mode A order

1. Clarify the research object, data type, desired output, target journal if relevant, and current bottleneck.
2. Use only the specialist skill or minimal combination needed.
3. For a complete research workflow, usually proceed through scientific question, literature verification, statistical feasibility, figure logic, writing, polishing, and reviewer-style checking.
4. Do not force every specialist skill into a small task.

### Mode B order

1. Freeze the project boundary, user constraints, and requested deliverables.
2. Decide whether the work is one-phase or two-phase:
   - Phase 1: high-recall, near-comprehensive search within a frozen scope and a deduplicated master literature list;
   - Phase 2: full-text review, evidence synthesis, data audit, direction comparison, and final plan.
3. Build and audit the literature corpus before broad ideation.
4. Audit the actual data situation at the project-appropriate levels. Define the available data, independent analytical unit, hierarchy, groups or conditions, dependencies, completeness, quality control, metadata, and completed analyses. Check participants, samples, timepoints, assays, libraries, images, files, batches, pairing, or chronology only when they are relevant to that project.
5. Construct the research landscape and identify only gaps that the current data can address.
6. Generate two to four evidence-grounded candidate directions.
7. Evaluate and select one primary direction; use brainstorming only after evidence and data constraints are established.
8. Develop the final research plan, statistical structure, validation logic, figure plan, and interpretation boundaries.
9. Draft the report using the v3-style structure unless the user specifies another format.
10. Run final consistency and reviewer-style checks.

## 4. Constraint hierarchy

Apply constraints in this order:

1. The user's explicit restrictions and objectives.
2. The actual data structure and chronology.
3. The evidence directly supported by the literature.
4. Statistical feasibility and validation conditions.
5. Novelty and publication positioning.
6. Optional extensions.

Never override a user's “no new experiments”, “no new samples”, “no follow-up”, or “use only existing data” constraint by adding experiments as required components. Optional future work may be mentioned only when the user permits it and must be clearly separated from the current plan.

## 5. Mandatory scientific cautions

Do not overstate novelty, causality, mechanism, diagnostic performance, or journal suitability.

Always distinguish:

- directly supported by current data;
- supported only if specified conditions are met;
- exploratory or hypothesis-generating;
- unsupported by the current data.

For projects with longitudinal or staged data, explicitly verify:

- the true event order;
- whether the first observed timepoint is a baseline, acute event, pretreatment sample, recovery sample, or post-treatment stable state;
- which timepoint determined the group label;
- the sign and interpretation of longitudinal change.

For every project, first audit the actual data situation rather than imposing a fixed clinical-data checklist. For repeated, paired, clustered, or nested data, define the independent unit and prevent leakage or duplicate counting.

For literature-based claims, verify the title, year, DOI/PMID, study design, data type, and whether the cited paper directly supports the statement.

## 6. Default Mode B deliverables

Unless the user requests otherwise, produce:

1. A formal literature-survey-and-final-plan report in editable and fixed-layout formats when file creation is requested.
2. A literature evidence matrix when full texts are available.
3. A literature list or reference-manager file when a download phase is needed.
4. A figure and technical-route outline inside the report or as a separate file.

The formal report should normally use continuous scientific prose. Keep large tables in the evidence matrix rather than the main report when the user prefers a report style similar to the v3 template.

## 7. Stop conditions and clarification

Ask for clarification only when an unresolved ambiguity would materially change the scientific conclusion, such as:

- an unclear or internally inconsistent data inventory;
- an undefined independent analytical unit;
- unresolved duplication, pairing, nesting, or batch structure when relevant;
- unknown longitudinal or experimental order when relevant;
- unclear origin of important group labels or annotations;
- missing definition of the primary outcome or scientific endpoint;
- conflicting counts, units, formats, or data-layer relationships.

Do not repeatedly ask about details that the user has already confirmed. Record confirmed facts as frozen constraints and proceed.

## 8. Output style

Prefer direct, evidence-grounded scientific reasoning.

When the user needs a plan, provide one coherent primary scientific storyline rather than a catalogue of methods.

When the user needs candidate directions, keep the set small and compare them explicitly.

When the user needs implementation, provide executable checklists, commands, scripts, or schemas.

When the user needs critique, be specific about the exact data, design, or inference problem and explain how it affects the final plan.
