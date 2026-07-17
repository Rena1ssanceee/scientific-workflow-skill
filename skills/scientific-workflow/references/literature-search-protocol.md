# Comprehensive Literature Search Protocol

## 1. Search objective

The literature-list phase must aim for a high-recall, near-comprehensive master list within an explicitly agreed scope. Do not stop after finding representative, famous, or conveniently accessible papers.

“Comprehensive” must be operationalized through a reproducible scope, multiple complementary search routes, iterative query refinement, deduplication, citation tracing, and a documented coverage audit. Absolute completeness cannot be guaranteed because databases, indexing, language coverage, and access change over time; any remaining coverage limitation must be stated explicitly.

## 2. Freeze the search scope before retrieval

Record:

- the primary scientific question and adjacent questions that are in scope;
- date range and final search lock date;
- research objects, diseases, materials, organisms, populations, or applications;
- data types, assays, methods, and analogous data structures that should be included;
- study designs and publication types;
- human, animal, material, environmental, computational, or mixed scope;
- language restrictions, if any;
- inclusion and exclusion criteria;
- whether methods papers, public datasets, preprints, conference records, theses, guidelines, or patents are relevant;
- known teams, competing directions, or papers that must be covered.

If the scope is too broad for a single auditable list, divide it into explicit subdomains rather than silently sampling the literature.

## 3. Use multiple complementary source types

Search all appropriate and accessible sources for the field, normally combining:

- at least one major bibliographic database;
- a second complementary bibliographic or citation database when available;
- field-specific databases or repositories;
- official public-data portals and accession databases;
- reference lists of key reviews, guidelines, and landmark original studies;
- forward-citation searches for key papers;
- preprint servers, trial registries, conference proceedings, theses, or patent databases when relevant to the topic and time sensitivity.

Examples include PubMed/MEDLINE, Embase, Web of Science, Scopus, Google Scholar, Crossref, Dimensions, IEEE Xplore, ACM Digital Library, CNKI, discipline-specific repositories, and official dataset portals. Use only sources appropriate to the project.

If an important subscription database is unavailable, state that limitation and compensate with other accessible databases, citation indexes, reference mining, and author or title searches. Do not describe the list as fully comprehensive without disclosing unavailable major sources.

## 4. Build a query matrix, not a single query

Use several query families:

1. Exact scientific-problem queries.
2. High-recall synonym queries using alternative names, acronyms, spelling variants, historical terms, and controlled vocabulary.
3. Research-object or disease subdomain queries.
4. Data-type and assay queries.
5. Method and analytical-approach queries.
6. Similar-data-structure or analogous-method queries, even when the disease or application differs.
7. Public dataset and resource queries.
8. Known-author, institution, consortium, or competing-direction queries when relevant.
9. Landmark-paper title searches and “similar articles” searches.
10. Forward and backward citation tracing from key original studies and high-quality reviews.

For non-English topics, search both English and the relevant original language when suitable databases are available.

## 5. Iterate until coverage stabilizes

Use an iterative search process:

1. Run precise and high-recall queries.
2. Screen early results for missed terminology, authors, journals, methods, and datasets.
3. Expand the query matrix with newly discovered terms.
4. Mine references from key reviews and original studies.
5. Run forward-citation searches.
6. Search newly identified authors, consortia, datasets, and benchmark names.
7. Repeat until an additional iteration yields no or very few new eligible records and all planned subdomains have been covered.

Search saturation is a coverage indicator, not proof of absolute completeness.

## 6. Maintain a search and screening log

For every source and query family, record:

- database or resource;
- search date;
- exact query or search logic;
- filters and date limits;
- number of records retrieved;
- export format;
- deduplication status;
- number retained after title/abstract screening;
- unresolved or inaccessible records;
- notes on terminology or coverage gaps.

Retain both the complete master list and the prioritized core-reading list. The master list should include all eligible and plausibly eligible records within scope, not only P0 or highly cited papers.

## 7. Deduplicate and verify bibliographic records

Deduplicate using DOI, PMID, title, author, year, registry number, and dataset accession as appropriate. Distinguish:

- preprint and final journal version;
- main article and supplementary material;
- conference abstract and full publication;
- cohort paper and secondary analyses of the same cohort;
- corrected, retracted, or updated versions.

Verify titles, authors, years, journals, DOI/PMID, study design, and data type for the records that support the final report.

## 8. Literature-list fields

At minimum capture:

- record ID;
- title;
- first author;
- year;
- journal or source;
- DOI/PMID/other identifier;
- source database or discovery route;
- study type;
- research object or disease;
- data type and method;
- sample size and analytical unit when known;
- public data accession when available;
- priority;
- relevance note;
- full-text status;
- inclusion status;
- duplicate or version relationship;
- notes.

Use `templates/literature-list-template.md`.

## 9. Minimum completion criteria for a “comprehensive within scope” list

Before presenting the literature list as comprehensive within the defined scope, confirm that:

- the topic, date range, data types, study designs, and exclusions are frozen;
- every planned database and resource has been searched or explicitly marked unavailable;
- precise, synonym, subdomain, method, data-type, and analogous-structure queries have been run;
- key reviews and landmark papers have undergone backward-reference mining;
- key papers have undergone forward-citation searching;
- important authors, consortia, datasets, and competing teams have been checked;
- records have been deduplicated and obvious version relationships resolved;
- every predefined subdomain has been screened;
- a second-pass query using newly discovered terminology has been completed;
- the final search has been updated to the lock date;
- remaining access, indexing, language, or database limitations are documented.

If these criteria are not met, label the output as a preliminary or high-recall partial list rather than a complete master list.

## 10. Completeness language

Use precise wording such as:

- comprehensive master list within the predefined scope and searched sources;
- high-recall, reproducible search covering the specified dates, topics, data types, and databases;
- near-comprehensive corpus after multi-database search and citation tracing;
- remaining records may emerge because of indexing delays, inaccessible subscription databases, language limitations, or later publications.

Do not claim literal global exhaustiveness unless a formal systematic-review process and complete database access justify it.

## 11. Search update rule

Before finalizing the research-planning report, rerun the key queries to the current lock date when new studies could materially change the recommendation. Document newly added papers separately from the user-uploaded corpus.
