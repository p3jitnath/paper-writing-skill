---
name: paper-writing
description: Plan, draft, revise, and scientifically review research papers, including arguments, evidence, mathematical methods, references, and submission materials, with conditional AI weather and climate guidance.
---

# Scientific Paper Writing

Develop a clear scientific argument whose claims match its evidence. Adapt the narrative to theoretical, methodological, experimental, observational, or applied work; use the weather and climate extensions when relevant.

## Scope and initiative

The user's instructions and current project or venue requirements take precedence over house defaults. Distinguish inspection, proofreading, rewriting, structural work, layout work, and scientific review. Findings-only requests leave files unchanged; protected wording stays protected. Complete authorised dependent repairs without expanding a local edit into a new research programme.

For files, identify the active source, working revision and existing changes, relevant bibliography and assets, output, and build route. For a pasted passage, its supplied context can be sufficient. Infer routine choices from current evidence; ask only when a missing fact changes a scientific claim or another consequential decision, continuing independent work.

Reuse current audience, language variety, notation, review markup, figure profile, page constraints, and delivery settings. Retain the user's vocabulary exclusions and abstract limit of 2,000 characters including spaces. An existing context record helps substantial planning, but a local edit does not require one, a full audit, new experiments, or other skills. Later specific instructions supersede conflicting earlier preferences. Keep planned, executed, verified, incorporated, and conclusive work distinct.

## Read for the requested task

Read only relevant sections. Paths in backticks are relative to this skill directory; Markdown links resolve from the containing file.

| Task | Guidance |
|---|---|
| Draft or polish prose | [Prose conventions](references/prose_style.md); preserve the manuscript's voice. |
| Plan or substantially reframe a paper | [Project planning](references/project_planning.md) and [paper genres](references/paper_genres.md). |
| Revise a section's argument | Relevant guide in `section_rhetorical_moves/` and matching checklist in `writing_checklists/`; apply domain-specific items only when relevant. |
| Review claims, controls, aggregation, uncertainty, or proxies | [Scientific evidence](references/scientific_rigor.md); its weather/climate sections are conditional. Use [red-team protocol](red_team_protocol.md) for a requested critical review. |
| Explain or revise mathematics, algorithms, or computational claims | [Mathematical methods](references/mathematical-methods.md). |
| Write a title, abstract, or required front matter | [Front matter](references/front_matter.md). |
| Edit LaTeX or fit a page limit | [LaTeX editing](references/latex_manuscript_editing.md). |
| Create or integrate figures | [Figure synthesis](figure_synthesis_guide.md); [integration checks](references/manuscript_review.md#figures) when placing them in a manuscript. |
| Edit or audit a bibliography | [Bibliography requirements](references/bibliography.md), to the requested depth. |
| Respond to reviewers | [Reviewer responses](references/reviewer_responses.md). |
| Review a manuscript, accept revisions, replace results, or prepare submission | [Manuscript review](references/manuscript_review.md); [TCCML guidance](references/tccml-neurips.md) only for that workshop. |
| Resume a long audit | [Audit ledger](loop_mode.md), when tracking work across sessions is useful. |

## Scientific invariants

- Preserve values, units, definitions, notation, citations, source lineage, and uncertainty. Locate conflicts and resolve them from evidence or flag the unresolved choice.
- Keep the target quantity, comparator, population, conditions, and aggregation recoverable for result-bearing statements. Distinguish system comparisons from component tests and structural guarantees from measured outcomes.
- Make each section answer a question and prepare what follows. Emphasise the strongest supported finding through ordering and precise explanation, retaining important adverse results and trade-offs.
- Keep scientific claims within tested or proved conditions. In weather/climate work, distinguish observations, analyses, reanalyses, simulations, and forecasts, and offline accuracy from coupled or operational performance.
- When replacing a result, update its dependent text, tables, figures, captions, and conclusions together. When shortening, preserve the evidence and qualifications needed by the surviving claims.

## Verify and deliver

Match verification to the change: compare a prose edit with its source and read it continuously with its neighbours; check an edited formula's equivalence; mechanically verify that an edited abstract has at most 2,000 characters including spaces; compile and inspect affected pages for rendering changes; inspect evidence for changed scientific claims. Read the intended accepted version of tracked edits separately from their markup. A successful build does not establish scientific correctness or coherent prose.

After applicable checks pass, repeat or broaden them only after another edit, a failure, or a concrete concern. Missing tooling or evidence limits only the checks that require it. Return the requested text, findings, or files, with a brief account of material changes and checks actually performed for substantial work. Distinguish source inspection, compilation, visual review, numerical verification, experiment execution, local saving, and publication; an earlier success does not verify current inputs.
