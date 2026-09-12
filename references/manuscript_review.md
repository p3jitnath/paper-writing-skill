# Manuscript review and integration

Use for a manuscript-wide review, submission preparation, or coordinated result replacement. For a local change, apply only the checks needed to validate its effects. Prose conventions are in [prose_style.md](prose_style.md); scientific checks are in [scientific_rigor.md](scientific_rigor.md). Paths in backticks are relative to the skill directory.

For a requested full audit, report the checked dimensions with evidence:

| Gate | Evidence |
|---|---|
| Claim–evidence | Claim mapped to figure/table/diagnostic |
| Data integrity | Product, version, role, period, split, units verified |
| Verification | References, metrics, uncertainty, disaggregation verified |
| Physical reasoning | Mechanism and alternative explanations checked |
| Reproducibility | Code/data/weights/environment/archive status checked |
| Prose | Voice, accessibility, terminology, and mechanical checks run |

Do not claim a gate passed without inspecting the relevant artefact or text.

Before claiming the relevant deliverable is complete, resolve the applicable defects below. A defect blocks that claim, not independent work on the rest of the request:

- Citation locality: place each citation immediately after the named model, dataset, method, or claim it supports. Do not collect citations for several models or claims at the end of a broad sentence.
- Reader-facing terminology: scan the manuscript, captions, legends, and figure labels for internal run numbers, checkpoint names, and other experiment identifiers. Replace them with descriptive scientific names, retaining an identifier only when reproducibility requires it and defining it beside the reader-facing name.
- Neutral headings: make every section and subsection title describe the analysis or subject rather than announce a conclusion.
- Self-contained repository: copy every included figure into the paper's `figures/` directory and verify that no `\includegraphics` command or related LaTeX macro resolves outside it.
- Rendered page contract: inspect the compiled PDF and record the last body page, first bibliography page, first appendix page, float order, and any orphaned appendix heading, figure, table, or prose. Do not infer these properties from source order.
- Canonical bibliography: detect the same publication cited as both a preprint and a journal article, merge duplicate records, update citation keys, and prefer the requested published version.
- Caption typography: inspect every caption command and caption macro for manual formatting such as `\textbf{...}`. Enforce the caption style recorded in `project_context.md` and remove conflicting manual formatting before delivery.
- Rendered cross-references: determine whether `\ref`, `\autoref`, or a customised counter already renders the object's semantic name. Never combine a literal prefix with a reference that renders the same prefix. Compile the manuscript and scan the rendered PDF text for repeated prefixes, including `Appendix Appendix`, `Figure Figure`, `Table Table`, `Section Section`, and `Equation Equation`. Treat every genuine repetition as a blocking error.
- Result replacement: identify the canonical run, checkpoint, forecast length, baseline, aggregation, and source data before editing. Update the abstract, Methods, Results, tables, captions, appendices, and supplementary discussion as one unit, then search the complete source for superseded identifiers, durations, percentages, variable names, settings, and conclusions.
- Figure–caption–text agreement: verify every visible number and category together with its caption and nearby discussion, including duration, rank, invocation count, aggregation, percentage, difference direction, and residual definition.
- Abstract length: mechanically count the final edited abstract against the 250-word house limit or the explicitly specified limit. Exclude LaTeX commands and the abstract environment delimiters from the count, include words displayed through command arguments, and apply a lower venue limit when present.
- Quantitative support: every number or statistic used as paper evidence must be represented in an accompanying figure or table, and every figure and table must be cited in the main text. Cite each appendix from the main text; within an appendix, cite the section when item-by-item figure or table citations would be redundant.
- Section depth: for manuscript-wide structural work, prefer at least two substantive paragraphs per headed unit and two subsections per section when the genre supports them. Preserve a user- or venue-defined structure, and merge thin headings rather than add padding to meet a count.

## Figures

For figure creation or integration, read `figure_synthesis_guide.md`; consult `figure_templates/venue_styles.md` when selecting a conceptual-figure style. Data figures require explicit units, coordinate conventions, aggregation, reference period, uncertainty encoding, and accessible colour choices. Make every figure as large as the verified venue template and page geometry permit while preserving aspect ratio, margins, caption placement, and reading order. Do not shrink figures merely to save space unless an explicit page requirement must be met, and then use only the reduction needed to comply without sacrificing legibility. Never leave a figure dangling at the end of a section or the paper: ensure that at least one substantive interpretive paragraph follows it before the next heading or document end. Inspect the rendered paper and adjust the figure callout, float location, or permitted placement controls until this ordering is visible in the output. Inspect rendered figures at final publication size because a checklist cannot establish legibility, scale, or placement.

Treat caption typography as a venue or project preference, not a universal rule. Default to regular-weight captions without bold descriptive lead-ins only when no user, project, template, or venue requirement specifies otherwise.

For an appendix experiment, state enough detail to reproduce its interpretation: predictor aggregation, split-aware preprocessing, regime or subgroup definition, metric and reference, contrast direction, resampling unit and count, multiple-testing correction, effect size, uncertainty, and evidential limitation. Make appendices concrete and scannable: replace walls of prose with tables, bullet points, or figures whenever those forms communicate the material faithfully. Place an appendix figure immediately after its section heading when requested, but retain substantive methodological and interpretive prose after the figure so it does not dangle. Reset and format appendix counters only when required by the venue or project template, and verify the rendered cross-reference, such as `Figure A.1`.

## Introduction

When novelty is requested, identify the closest prior study and state the difference in analysis, system boundary, data, or evaluation protocol in one or two sentences. Avoid `first`, `novel`, or field-wide priority claims unless the literature search supports them.

## Paper integration

Audit the manuscript as a connected argument:

- Introduce every model, dataset, abbreviation, symbol, and metric before use.
- Cite every table and figure in the prose.
- Place citations immediately after the specific model, dataset, method, or claim they support. Do not group citations for several named entities at the end of a broad sentence.
- Replace internal experiment identifiers in prose, captions, legends, and figure labels with descriptive scientific names.
- Keep section and subsection headings neutral and descriptive rather than conclusion-led.
- Provide an experiment overview when several experiments form a model ladder.
- In that overview, give every experiment a reader-facing name, purpose, changed inputs or architecture, held-fixed controls, target, and comparison. The overview must let a reader reconstruct the order and controlled contrasts without internal identifiers.
- Begin Results subsections with the experiment's purpose, not a result teaser.
- Ensure each figure is followed by substantive interpretation before the next heading.
- Verify requested page placement from the compiled PDF or LaTeX labels, not from source order.
- Use one stable reader-facing term for every method, variable, phase, and system. Define the relationship before using a formal and informal name for the same object.
- Keep the main text centred on the central claim. Move secondary fields, spatial diagnostics, and implementation detail to an appendix only when the main text retains the evidence and limitations needed to understand the experiment.
- Separate measurement, interpretation, and scope: state what was observed, what it supports, and what remains untested. Do not generalise from a single case or imply operational readiness without held-out operational evidence.

## Titles and conclusions

Generate several claim-bounded title candidates and prefer the most natural, specific construction. A reviewer's requested opening such as `On the ...` does not justify awkward grammar or a broader claim.

Match the final section title to the requested relationship between future directions and conclusion. End with the most consequential supported result, not a generic future-work statement.

## Prepare a submission

Read `references/latex_manuscript_editing.md`. Verify venue requirements, availability statements, ethical or AI-use disclosures, figure resolution, references, bibliography URLs, supplement links, and all numbers shared across abstract, text, tables, and figures.

Distinguish the main-paper limit from references and appendices. Inspect the rendered PDF and verify the page on which the main conclusion ends, the references begin, and each appendix begins; do not infer compliance from the total PDF page count. When a secondary figure cannot remain legible within the main-paper limit, move it to an appendix or supplement instead of shrinking its typography, while retaining the headline interpretation in the main text.

For Tackling Climate Change with Machine Learning workshop manuscripts, read `references/tccml-neurips.md` and verify it against the supplied template.

Finish every result-changing task with this consistency pass: identify the canonical experiment and source data; regenerate requested artefacts from reproducible scripts; compile the manuscript; inspect relevant pages at final size; search the complete source for stale values and terminology; and report unresolved warnings separately from passed checks.

Keep every LaTeX prose paragraph on one physical source line and every complete `\caption{...}` command on one physical source line. Join only prose and caption source lines while preserving blank paragraph boundaries, equations, tables, comments, commands, and environment structure. For whitespace-only reflow, verify that the compiled page count, rendered text, and word positions are unchanged. Preserve template files and unrelated preamble settings. Necessary package or definition additions follow `references/latex_manuscript_editing.md`; honor an explicitly requested template change.
