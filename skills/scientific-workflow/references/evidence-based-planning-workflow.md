# Evidence-Driven Literature Survey and Research Planning Workflow

This document defines Mode B. It coordinates existing specialist skills; it does not replace them.

## A. Purpose

Transform literature evidence, uploaded full texts, existing scientific data, user constraints, and known competing research into one defensible and executable research plan.

The required reasoning chain is:

literature landscape → mature and repetitive work → unresolved questions → data audit → addressable gaps → candidate directions → final selected direction → analysis and validation plan → figures and interpretation boundaries.

## B. Stage 0 — Freeze the project boundary

Record a project constraint sheet before analysis:

- research object and field;
- user’s actual scientific question;
- available data and completed analyses;
- forbidden additions such as new experiments, samples, follow-up, or costly assays;
- required use of all or selected data;
- teams, publications, or directions to avoid;
- time horizon and publication objective;
- required files and report format.

Treat confirmed information as frozen. Do not later reintroduce excluded experiments or change chronology without evidence.

## C. Stage 1 — Decide one-phase or two-phase execution

### One-phase

Use when the relevant full texts are already available and the corpus is adequate.

### Two-phase

Use when the user first wants a comprehensive literature list and will later upload PDFs.

Phase 1 outputs:

- frozen search scope, inclusion criteria, and lock date;
- multi-source, multi-query, high-recall search strategy;
- deduplicated comprehensive master list within the defined scope;
- prioritized core-reading subset;
- search and coverage log;
- download status fields;
- explicit completeness boundary and unavailable-source limitations.

Pause after Phase 1 if the user intends to download the corpus.

Phase 2 outputs:

- corpus manifest and quality check;
- full-text evidence matrix;
- research landscape and gaps;
- data audit;
- candidate-direction evaluation;
- final plan and formal report.

## D. Stage 2 — Build and audit the literature corpus

Use `nature-academic-search` for retrieval and bibliographic verification and `literature-review` for synthesis. Follow `literature-search-protocol.md`. The literature-list phase must aim for a high-recall, near-comprehensive master list within the frozen topic, date range, data types, study designs, and source coverage. Do not stop after representative papers. Use multiple databases or complementary sources, iterative synonym and method searches, public-resource searches, backward and forward citation tracing, and a final coverage audit.

Separate:

- core original studies;
- large or longitudinal cohorts;
- methods and benchmarks;
- public datasets and resources;
- systematic reviews and guidelines;
- supplementary materials;
- background-only papers.

Do not treat reviews as substitutes for reading the key original studies when full texts are available.

## E. Stage 3 — Extract full-text evidence

Follow `full-text-evidence-extraction.md`.

Evidence extraction must capture study design, independent unit, sample size, chronology, data type, analysis methods, validation, main findings, limitations, and direct relevance to the current project.

Figures and supplementary tables must be inspected when they contain information not captured by parsed text.

## F. Stage 4 — Audit the existing data situation

Follow `data-audit-checklist.md` and use `statistical-analysis` for feasibility judgments.

The audit must be project-specific. First identify the available data modalities, independent analytical unit, hierarchy, groups or conditions, metadata, preprocessing, quality control, missingness, completed analyses, and validation resources. Then examine duplication, nesting, pairing, chronology, label provenance, batches, technical replicates, or repeated measurements only when those structures are present.

Do not force non-clinical, cross-sectional, materials, imaging, computational, or experimental projects into a participant/sample/timepoint template.

## G. Stage 5 — Construct the research landscape

Answer four questions:

1. What do most studies currently do?
2. Which analyses are mature and can serve only as foundations?
3. Where has the field moved beyond conventional analyses?
4. Which unresolved questions are genuinely addressable with the current data?

Do not equate a new algorithm or additional plot with a scientific gap.

## H. Stage 6 — Generate candidate directions

Generate two to four complete scientific directions, not lists of methods.

Each direction must state:

- scientific question;
- required data and analysis unit;
- main comparisons;
- key analyses;
- validation route;
- expected evidence chain;
- distinction from existing work;
- risks and interpretation boundary;
- whether it uses all major data;
- feasibility category: direct, conditional, exploratory, or unsupported.

Use `scientific-brainstorming` only at this stage and constrain it by the evidence map and data audit.

## I. Stage 7 — Select the final direction

Follow `candidate-direction-evaluation.md`.

Select one primary direction and optionally one secondary analysis layer. Avoid combining unrelated directions merely to use more methods.

The final direction must have a single coherent scientific storyline and a defensible primary endpoint or main comparison.

## J. Stage 8 — Build the final plan

The final plan must include:

- Chinese and English titles;
- central scientific question;
- two or three sequential objectives;
- cohort and grouping definitions;
- chronology and label provenance;
- analysis modules linked to objectives;
- statistical design;
- internal and public-data validation;
- expected outputs;
- figure and technical-route plan;
- limitations and claim boundaries.

Each analysis module must specify input, independent unit, comparison, method class, output, and the scientific question answered.

## K. Stage 9 — Draft and quality-control the report

Use `nature-writing`, `nature-polishing`, and `nature-reviewer` after the scientific plan is fixed.

Use `templates/v3-style-report-outline.md` by default.

Run all checks in `quality-control.md` before delivery.
