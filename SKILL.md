---
name: paper-writing
description: Plan, draft, revise, and scientifically review research papers, including arguments, evidence, mathematical methods, references, and submission materials, with conditional AI weather and climate guidance.
---

# Scientific Paper Writing

Develop a clear scientific argument whose claims match its evidence. Use polished publication-quality academic English for research manuscripts, with explicit logical transitions and consistent terminology. Adapt the narrative to theoretical, methodological, experimental, observational or applied work, using the weather and climate extensions when relevant.

## Mandatory GitHub refresh

Before every invocation, even if this skill was used earlier in the session, run `python3 "<skill-dir>/scripts/refresh_skill.py"` using the actual skill directory. The helper attempts to download the latest `main` bundle from `https://github.com/p3jitnath/paper-writing-skill` through SSH Git, HTTPS Git with existing credential helpers, then an HTTPS archive for public access. Fallbacks can start while a slower attempt continues. Download and validation workers share a 120-second deadline by default, configurable through the positive finite number of seconds in `LLM_SKILL_REFRESH_TIMEOUT_SECONDS`, such as `240` for a slow connection.

The helper prints the path of the selected `SKILL.md`. Open that file and use its directory for references, scripts and packaged assets throughout this invocation. Run the helper only once per invocation, including when the selected bundle repeats this instruction. A successful refresh selects a validated runtime copy without overwriting the installed bundle or unpublished edits.

Use existing credentials without requesting passwords or tokens. If all attempts fail or the deadline expires, the helper reports the failure categories and selects the current bundle without an artificial wait. Briefly disclose the fallback. If the helper cannot run, use the current bundle and disclose that limitation. Attempt a fresh download on each new invocation.

## Prose punctuation

Do not use semicolons or colons in prose you draft or revise, including manuscript body text, headings, captions, table text, author notes, and explanatory replies. Titles are exempt and may use either punctuation mark. Recast with full stops, commas, conjunctions, or parentheses while preserving meaning and avoiding comma splices. Preserve required punctuation in code, configuration, URLs, file paths, identifiers, mathematical notation, exact quotations, official names, and bibliography metadata. Prose strings rendered by code still follow this rule. Inspect changed reader-facing text before delivery. Do not rewrite protected text or unrelated content merely to remove punctuation.

## Scope and initiative

The user's instructions and current project or venue requirements take precedence over house defaults. Distinguish inspection, proofreading, rewriting, structural work, layout work, and scientific review. Findings-only requests leave files unchanged; protected wording stays protected. Complete authorised dependent repairs without expanding a local edit into a new research programme.

A label-only correction changes identifiers and their dependent references together while preserving prose, equations, results and layout. Do not apply unrelated preamble, float-placement or style changes during that correction. Proofreading flags scientific uncertainty with an author query rather than silently choosing an interpretation.

For files, identify the active source, working revision and existing changes, relevant bibliography and assets, output, and build route. For a pasted passage, its supplied context can be sufficient. Infer routine choices from current evidence; ask only when a missing fact changes a scientific claim or another consequential decision, continuing independent work.

Reuse current audience, language variety, notation, review markup, figure profile, page constraints, and delivery settings. Read an existing project profile when supplied or recorded in the project instructions. Carry its audience and writing convention through all requested outputs, including formulations, README files, captions, comments, docstrings, reports and conversation. Keep institution colours, artwork, casing and explicit punctuation exceptions in that compact profile rather than making them universal skill rules. Retain the user's vocabulary exclusions and abstract limit of 2,000 characters including spaces. An existing context record helps substantial planning, but a local edit does not require one, a full audit, new experiments, or other skills. Later specific instructions supersede conflicting earlier preferences. Keep planned, executed, verified, incorporated, and conclusive work distinct.

## Writing preferences

- Always use exactly two or three descriptive words in each exported figure asset filename stem, joined with hyphens before the extension, such as `forecast-error.pdf` or `regional-skill-map.png`. Active TikZ source fragments follow the numbered `.tex` naming convention.
- Use diplomatic, measured wording for clarifications, nuances, qualifications and criticism, keeping the scientific meaning and necessary corrections clear.
- Use neutral, concise and descriptive subsection names that identify the topic or analysis without evaluative claims.
- Divide every Discussion into titled subsections that explain supported strengths and contributions while providing honest, constructive criticism and material limitations.
- Introduce the paper's own work with “In this study, we …” after establishing the context. Use “investigate” to state the research question, as in “In this study, we investigated whether …” for completed work.
- Always write Conclusions and descriptions of this or other papers in past tense, preserving what was completed, proposed or left unresolved.
- Start the abstract's final sentence with “Together, …” and connect the supported findings to a specific future opportunity. See [abstract guidance](references/front_matter.md#abstract).
- Start the final Conclusion paragraph with “This study established …” and match the abstract's main finding, scope and outlook. Use the exact phrase “in the future” in the last sentence to connect a specific opportunity for progress to the broader problem. See [the closing guidance](section_rhetorical_moves/discussion.md#move-7-end-on-the-consequential-implication).
- Every paper must include an overview figure. Reuse a suitable existing figure or generate a faithful, editable overview using [TikZ, a LaTeX graphics system](https://ctan.org/pkg/pgf), when one is missing. Follow [the overview workflow](figure_synthesis_guide.md#required-overview-figure).

Apply [prose conventions](references/prose_style.md) for tone, headings and tense, and [Discussion guidance](section_rhetorical_moves/discussion.md) for balanced subsection structure.

## Paper folder contract

Keep exactly one manuscript entry point per paper, named `main.tex`. When preparing reviewer replies, use one `review-response.tex` at the paper root and update it across rounds. Keep numbered supporting sources such as `s01_abstract.tex` and the local bibliography, class and style dependencies at the root. Place final figure assets directly in flat `figures/`, preferably as PDFs or PNGs. Keep other material still needed in hidden, gitignored `.scratch/`. Use the bundled starter when no supplied template governs the files. [Paper workspace](references/paper_workspace.md)

When creating paper sources or changing figure placement, use `[!h]` for every LaTeX `figure` and `figure*` environment, including figures reused from manuscript or template sources. Follow [figure placement](references/latex_manuscript_editing.md#figure-placement). Preserve existing placement during label-only corrections.

When creating a paper or editing its preamble, include the exact alphabetical footnote and yellow `\todo` definitions in [the required paper preamble](references/latex_manuscript_editing.md#required-paper-preamble), with their package dependencies. Apply them to both the bundled starter and supplied manuscript or template sources within that scope. Preserve existing definitions during label-only corrections.

Direct the user to pull or import the paper sources into Overleaf and compile there. Generate a paper PDF in the paper folder only when the user explicitly asks. Diagnostic PDFs are the permitted exception and must stay in gitignored `.scratch/`, together with all other diagnostic material, including previews, screenshots, logs, build files and temporary test artifacts. Follow [Overleaf and diagnostics](references/paper_workspace.md#overleaf-and-diagnostics) for every diagnostic workflow.

When you find versioned drafts such as `v2` or `v3`, politely state that the paper will have one `main.tex` and ask which draft or changes to retain before consolidating, unless the user has already made that choice. Use Git for recoverable revisions. Remove every confirmed stale file during the authorised cleanup after accounting for unique work. [Revision and cleanup policy](references/paper_workspace.md#git-revision-policy)

## Read for the requested task

Read only relevant sections. Paths in backticks are relative to this skill directory; Markdown links resolve from the containing file.

| Task | Guidance |
|---|---|
| Draft, edit, or review prose | [Prose conventions](references/prose_style.md), including academic narrative, first-use definitions and confident evidence-based framing. Preserve the manuscript's voice. |
| Draft or substantially revise an introduction | [Introduction structure](section_rhetorical_moves/introduction.md) and [introduction checklist](writing_checklists/intro_questions.md). Reserve the first two paragraphs for context and motivation, and cite 5–10 distinct works across the introduction, each only once. |
| Create a paper folder or resolve draft clutter | [Paper workspace](references/paper_workspace.md), including the required flat layout and Git revision policy. |
| Plan or substantially reframe a paper | [Project planning](references/project_planning.md) and [paper genres](references/paper_genres.md). |
| Revise a section's argument | Relevant guide in `section_rhetorical_moves/` and matching checklist in `writing_checklists/`; apply domain-specific items only when relevant. |
| Review claims, controls, aggregation, uncertainty, or proxies | [Scientific evidence](references/scientific_rigor.md); its weather/climate sections are conditional. Use [red-team protocol](red_team_protocol.md) for a requested critical review. |
| Explain or revise mathematics, algorithms, or computational claims | [Mathematical methods](references/mathematical-methods.md). |
| Write a title, abstract, or required front matter | [Front matter](references/front_matter.md). |
| Edit LaTeX or fit a page limit | [LaTeX editing](references/latex_manuscript_editing.md). |
| Correct appendix labels or check appendix consistency | [Labels and cross-references](references/latex_manuscript_editing.md#labels-and-cross-references) and [appendix consistency](references/manuscript_review.md#appendix-consistency). |
| Create or integrate figures | [Figure synthesis](figure_synthesis_guide.md); [integration checks](references/manuscript_review.md#figures) when placing them in a manuscript. |
| Edit or audit a bibliography | [Bibliography requirements](references/bibliography.md), to the requested depth. |
| Respond to reviewers | [Reviewer responses](references/reviewer_responses.md). |
| Review a manuscript, accept revisions, replace results, or prepare submission | [Manuscript review](references/manuscript_review.md); [TCCML guidance](references/tccml-neurips.md) only for that workshop. |
| Resume a long audit | [Audit ledger](loop_mode.md), when tracking work across sessions is useful. |

## Scientific invariants

- Preserve values, units, definitions, notation, citations, source lineage, and uncertainty. Locate conflicts and resolve them from evidence or flag the unresolved choice.
- At first mention, identify a tool's role and cite its primary source. Compare appendix notation, units, algorithms and experimental settings with the main text and documented implementation when reviewing that material.
- Keep the target quantity, reference case, population, conditions, and aggregation recoverable for result-bearing statements. Distinguish system comparisons from component tests and structural guarantees from measured outcomes.
- Make each section answer a question and prepare what follows. Connect observation → problem → response → result → consequence across the argument, respecting the selected genre and the introduction's two opening context paragraphs. State supported findings directly with their interpretation, retaining important adverse results and trade-offs.
- Keep scientific claims within tested or proved conditions. In weather/climate work, distinguish observations, analyses, reanalyses, simulations, and forecasts, and offline accuracy from coupled or operational performance.
- When replacing a result, update its dependent text, tables, figures, captions, and conclusions together. When shortening, preserve the evidence and qualifications needed by the surviving claims.

## Verify and deliver

Match verification to the change. Compare a prose edit with its source and read it continuously with its neighbours, check an edited formula's equivalence, mechanically verify the abstract's 2,000-character limit including spaces, and inspect evidence for changed scientific claims. For rendering changes, inspect a current supplied PDF or perform a diagnostic build confined to `.scratch/` under the compilation rules above. Read the intended accepted version of tracked edits separately from their markup. A successful build does not establish scientific correctness or coherent prose.

For label changes, check for stale, missing and duplicate references, then compile through the required passes in `.scratch/`. Compare before and after output to confirm unchanged displayed text, numbering and pagination, following [labels and cross-references](references/latex_manuscript_editing.md#labels-and-cross-references). Report any unavailable build or comparison instead of claiming equivalence.

After applicable checks pass, repeat or broaden them only after another edit, a failure, or a concrete concern. Missing tooling or evidence limits only the checks that require it. Return the requested text, findings, or files, with a brief account of material changes and checks actually performed for substantial work. Distinguish source inspection, compilation, visual review, numerical verification, experiment execution, local saving, and publication; an earlier success does not verify current inputs.
