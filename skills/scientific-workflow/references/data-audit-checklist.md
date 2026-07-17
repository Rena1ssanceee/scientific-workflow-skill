# Existing-Data Situation Audit Checklist

A data-situation audit is mandatory in evidence-driven planning. The audit must be adapted to the scientific domain and must not force every project into a clinical participant/sample/timepoint structure.

## 1. Freeze the actual data situation

Record only the dimensions that are relevant to the project, including as applicable:

- research objects, cohorts, materials, organisms, sites, or experimental systems;
- data modalities, assays, instruments, imaging types, sequencing types, or measurement platforms;
- files, tables, images, spectra, sequences, models, or other available data products;
- groups, conditions, controls, interventions, stages, or phenotypes;
- independent units, repeated measurements, technical replicates, and nested observations;
- metadata, covariates, outcomes, annotations, labels, and public data resources;
- preprocessing, normalization, quality control, exclusions, and completed analyses;
- missingness, imbalance, batch effects, and known data-quality limitations.

Do not assume that participant, sample, timepoint, or library counts are relevant unless the project actually contains those structures.

## 2. Define the analytical unit and hierarchy

Identify the independent unit and every important nested level. Depending on the project, these may include:

- participants, families, specimens, biological samples, or timepoint samples;
- animals, cultures, materials, synthesis batches, field sites, or experimental runs;
- images, scans, sections, lesions, regions, cells, genes, taxa, spectra, or measurements;
- assays, sequencing libraries, instrument runs, or technical replicates.

Never use “sample size” without specifying the unit. Create an appropriate master index or relationship table with stable identifiers when multiple files or data layers must be reconciled.

## 3. Check duplication, dependency, pairing, and nesting when applicable

Determine whether observations are independent or linked through:

- repeated IDs or duplicated records;
- repeated measurements on the same object;
- paired conditions, paired omics, paired images, or matched controls;
- multiple regions, images, lesions, cells, or measurements within one higher-level unit;
- family, center, site, batch, instrument, operator, or run clustering;
- overlapping groups or nested subgroups.

Prevent duplicate counting and information leakage. Use statistical models and validation splits that respect the real dependency structure.

## 4. Verify chronology and event order when the project is longitudinal or staged

Do not infer chronology from conventional labels. Explicitly verify, as relevant:

- the real order of events, sampling, treatment, intervention, or processing;
- whether a named “baseline” is truly pre-event;
- whether a “stable” state is pre-event or post-treatment recovery;
- the interval between observations;
- which stage or timepoint determined group labels;
- the direction and sign convention of longitudinal change.

If the project has no temporal or staged structure, mark chronology as not applicable rather than inventing one.

## 5. Verify grouping and label provenance when labels are used

For every important grouping or annotation variable, record as applicable:

- clinical, experimental, computational, or expert-defined origin;
- data layer or measurement used to assign it;
- stage or timepoint on which it was assigned;
- threshold, rule, ontology, or diagnostic criterion;
- whether labels are mutually exclusive, overlapping, hierarchical, or uncertain;
- whether the same rule was used across files, sites, diseases, materials, or batches.

Do not project a label beyond the stage, data layer, or definition from which it was derived.

## 6. Audit completeness and quality

Check, as relevant:

- complete versus missing paired or repeated observations;
- complete versus partial multi-modal data;
- failed assays, failed sequencing, unusable images, censored measurements, or quality-control exclusions;
- inconsistent file formats, identifiers, units, or reference systems;
- differing sample sources, protocols, instruments, or preprocessing pipelines;
- class imbalance and sparsity;
- theoretical maximum counts versus analyzable counts.

## 7. Record completed analyses and reusable outputs

Classify existing analyses and outputs as:

- reusable inputs;
- results requiring independent verification;
- analyses suitable for extension;
- completed work that should not be proposed again as the main novelty.

## 8. Inventory explanatory variables, outcomes, and validation resources

Confirm which metadata and endpoints actually exist. These may include:

- demographic, clinical, environmental, material, or experimental variables;
- treatment, processing, exposure, or intervention information;
- disease severity, phenotype, performance, function, or outcome variables;
- center, batch, platform, instrument, operator, and sampling variables;
- external cohorts, public datasets, benchmark data, or independent validation sets.

Do not promise adjustment, prediction, stratification, or validation without confirmed variables and compatible data.

## 9. Feasibility classification

For every proposed scientific question, assign one of the following:

- Directly supported by the existing data;
- Supported if specified data-quality, metadata, or completeness conditions are met;
- Exploratory or hypothesis-generating only;
- Not supported by the current data.

## 10. Required audit outputs

Produce a concise project-specific audit containing:

- the available data inventory;
- the independent analytical unit and hierarchy;
- relevant grouping, dependency, pairing, or chronology statements;
- completeness, missingness, and quality-control summary;
- completed analyses and reusable outputs;
- data strengths;
- limitations that materially affect the research plan.
