---
name: paper-writing
description: Plan, draft, revise, and scientifically review AI weather and climate research papers, including their evidence, verification, and submission materials.
---

# AI Weather and Climate Paper Writing

Develop scientifically defensible papers while keeping predictive skill, physical fidelity, scientific understanding, computational utility, and operational value distinct.

## Scope and initiative

The user's instructions and established project or venue requirements take precedence over this skill's house defaults, subject to the host's safety and permission rules. Use the supplied manuscript, evidence, and conversation to infer routine choices and finish the requested deliverable. Ask only for missing information that changes a scientific claim or other consequential decision; continue independent work while it is unresolved.

A local edit needs the passage and enough surrounding context to preserve meaning. Do not require a project-context file, full audit, new experiments, or other skills for a wording correction. For manuscript development, use an existing `project_context.md`; create or extend it when the requested planning needs one. Record unknown evidence without inventing results or blocking unrelated writing.

## Read for the requested task

Read only the relevant references or sections. Paths in backticks are relative to this skill directory; Markdown links resolve from the containing file.

| Task | Guidance |
|---|---|
| Draft or polish prose | [Prose conventions](references/prose_style.md); preserve the manuscript's established voice. |
| Plan or substantially reframe a paper | [Project planning](references/project_planning.md), with task families, genres, voice selection, and evidence requirements. |
| Draft or revise a section's argument | The matching guide in `section_rhetorical_moves/` and checklist in `writing_checklists/`; use [scientific rigor](references/scientific_rigor.md) for claims needing review. |
| Review evidence, verification, leakage, or physical claims | Relevant sections of [scientific rigor](references/scientific_rigor.md); [red-team protocol](red_team_protocol.md) for a critical review. |
| Write a title, abstract, or required front matter | [Front matter](references/front_matter.md). |
| Edit LaTeX, document structure, or page fit | Relevant sections of [LaTeX editing](references/latex_manuscript_editing.md). |
| Create or integrate figures | [Figure synthesis](figure_synthesis_guide.md); [integration checks](references/manuscript_review.md#figures) when placing figures in a manuscript. |
| Edit or audit a bibliography | [Bibliography requirements](references/bibliography.md). |
| Respond to reviewers | [Reviewer responses](references/reviewer_responses.md). |
| Review a full manuscript, replace results, or prepare submission | [Manuscript review](references/manuscript_review.md); [TCCML guidance](references/tccml-neurips.md) only for that workshop. |
| Resume a long audit | [Audit ledger](loop_mode.md), when tracking sections across sessions is useful. |

## Scientific invariants

- Preserve values, units, notation, citations, source lineage, and uncertainty. Flag factual conflicts with their locations instead of silently choosing an unsupported value.
- Distinguish observations, analyses, reanalyses, simulations, and forecasts. Name the product and its role.
- Tie claims to the available evidence and name the reference behind skill scores. Account for dependence, leakage, baseline fairness, and aggregation when those affect the claim.
- Keep offline accuracy separate from prognostic or coupled stability, and association separate from mechanism. State the tested boundary for transfer, climate, speed, and operational claims.
- When replacing a result, update its dependent text, tables, figures, captions, and conclusions together. Use reproducible source artefacts and inspect the affected rendered output.

## Verify and deliver

Match verification to the change: check a prose edit against its source; count an edited abstract mechanically; compile and inspect affected pages for layout or reference changes; audit scientific evidence for result changes. Complete applicable project checks, then repeat or broaden them only for failures, further edits, or a concrete unresolved concern. If tooling or evidence is missing, report exactly what remains unverified and finish the rest.

Return the requested text or files. For a small edit with no unresolved issue, the revision alone is enough. For substantial work, briefly report material changes, evidence gaps, and checks actually performed. Use a findings table for an audit or a response matrix for reviewer comments. Do not claim submission readiness or a clean scientific audit from a source-only check.

If a skill instruction causes a pause or conflicts with the requested task, identify the file and instruction and explain the conflict. Reuse authorization already given for installation, commits, or publication; this skill adds no separate approval step.
