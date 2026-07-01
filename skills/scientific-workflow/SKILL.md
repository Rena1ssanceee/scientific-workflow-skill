---
name: scientific-workflow
description: Orchestrates scientific research workflows by routing tasks to specialized skills for brainstorming, literature review, statistical analysis, academic search, figures, manuscript writing, polishing, and reviewer-style critique.
---

# Scientific Workflow

Use this skill when the user is working on a scientific research project, manuscript, proposal, literature review, statistical analysis, figure design, academic polishing, or pre-submission evaluation.

This is a router and workflow coordination skill. It should not replace specialized skills. Instead, use it to decide which specialized skill should be applied and in what order.

## Core workflow

For research idea generation, novelty framing, hypothesis development, experimental logic, and project positioning, use:

- `scientific-brainstorming`

For literature review, evidence synthesis, research gaps, citation mapping, and structured academic summaries, use:

- `literature-review`

For academic search, DOI checking, bibliographic verification, and literature retrieval, use:

- `nature-academic-search`

For statistical analysis, experimental design, variable definition, model selection, significance testing, effect size interpretation, and result validation, use:

- `statistical-analysis`

For scientific figure planning, visual storytelling, multi-panel figure logic, graphical abstract design, and Nature-style figure improvement, use:

- `nature-figure`

For manuscript writing, including title, abstract, introduction, methods, results, discussion, conclusion, cover letter, and response-to-reviewer style drafts, use:

- `nature-writing`

For academic polishing, English refinement, clarity improvement, tone control, reduction of exaggerated claims, and removal of AI-like phrasing, use:

- `nature-polishing`

For reviewer-style critique, pre-submission checking, novelty assessment, logic evaluation, journal fit, and weakness detection, use:

- `nature-reviewer`

## Recommended task routing

When the user asks for a complete research workflow, apply the following order:

1. Clarify the research object, data type, target journal or output, and current bottleneck.
2. Use brainstorming to define the scientific question, hypothesis, novelty, and expected contribution.
3. Use academic search and literature review to verify whether the question is supported by existing literature.
4. Use statistical analysis to check whether the data and design can support the claims.
5. Use figure planning to organize evidence into a clear visual structure.
6. Use writing to draft the manuscript or proposal.
7. Use polishing to improve clarity, tone, and academic style.
8. Use reviewer-style critique to identify weaknesses before submission.

## Scientific caution

Do not overstate novelty, causality, mechanism, or journal suitability.

When data are incomplete, clearly separate:

- what is directly supported by data;
- what is plausible interpretation;
- what remains speculative;
- what additional evidence would strengthen the claim.

For manuscript and proposal work, preserve the user's actual experimental conditions, data limitations, and target journal constraints.

For literature-based claims, encourage verification of references, DOI, publication venue, and whether the cited paper directly supports the statement.

## Output style

Prefer structured but concise scientific reasoning.

When the user needs a plan, provide a staged workflow.

When the user needs text, produce publication-oriented academic language.

When the user needs critique, be direct and specific.

When the user needs implementation, provide commands, scripts, or checklists that can be executed.
