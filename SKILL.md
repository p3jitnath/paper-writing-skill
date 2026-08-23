---
name: paper-writing
description: Research-paper planning, drafting, scientific review, and revision for work at the intersection of artificial intelligence and weather or climate modelling. Use for papers on weather forecasting, nowcasting, Earth-system emulation, climate downscaling, projections, data assimilation, extremes and hazards, hybrid physics-ML models, or scientific understanding with AI. Trigger for paper outlines, .tex edits, abstracts, methods, results, discussions, rebuttals, camera-ready revisions, figures, verification design, data leakage checks, physical-consistency audits, reproducibility statements, and submissions to Earth-science journals or ML conferences.
---

# AI Weather and Climate Paper Writing

## Purpose

Help researchers turn an AI weather or climate result into a scientifically defensible paper. Preserve the distinction between predictive skill, physical fidelity, scientific understanding, computational utility, and operational value. Never let a stronger ML score substitute for the evidence required by the paper's scientific claim.

## Start Every Task

1. Locate and read `project_context.md` in the paper directory. If it is absent or incomplete, read `brainstorming_guide.md` and build it before drafting claims.
2. Read `references/scientific_rigor.md`, `references/corpus_style.md`, and the selected voice profile.
3. Identify the task family, paper genre, and venue track from the routing tables below.
4. Load only the section guide and checklist required for the current task.
5. For any changed prose, run the style and scientific audits before presenting it.

## Route the Project

### Task family

| Family | Primary question | Required evidence emphasis |
|---|---|---|
| Weather forecasting / nowcasting | Does the method improve forecasts at useful lead times? | Reference forecasts, lead-time skill, regimes, extremes, calibration |
| Earth-system emulation | Does the emulator reproduce its source and remain credible when forced or coupled? | Fidelity, drift, budgets, slow modes, forcing sensitivity, coupling, speed and cost |
| Climate downscaling | Does the method add credible local information? | Spatial structure, extremes, temporal transfer, physical consistency |
| Climate projection / attribution | What changes, why, and with what uncertainty? | Forced response, internal variability, scenario/model uncertainty, mechanisms |
| Data assimilation / observation | Does AI improve the state estimate or observing workflow? | Independent observations, cycling stability, coverage, uncertainty |
| Extremes / hazards | Does the method improve rare-event characterization or decisions? | Threshold metrics, tails, event dependence, calibration, consequences |
| Scientific understanding | What physical relationship does AI reveal? | Mechanistic diagnostics, robustness, alternative explanations |
| Impacts / risk | How does a physical change alter consequential outcomes? | Event tails, exposure, vulnerability/loss model, dependence, uncertainty propagation |

If a paper spans families, select one primary family and list secondary families in `project_context.md`. The primary family controls the narrative and minimum evidence; secondary families add gates but do not create extra headline contributions automatically.

### Paper genre

Read `references/paper_genres.md` and select one primary genre:

| Genre | Contribution | Default architecture |
|---|---|---|
| Benchmark / resource | Comparable data, tasks, metrics, baselines, or infrastructure | Need → prior attempts → dataset/resource → evaluation protocol → baselines → open challenges |
| Flagship result | A compact, broadly consequential scientific or predictive result | Stakes/gap → approach → result-led sections → integrated interpretation → methods later or supplement |
| Model development | A model or coupling strategy with demonstrated behaviour | Reference hierarchy → model/method → offline tests → online/prognostic tests → physical diagnostics → discussion |
| Calibration / inverse problem | Parameters or inputs constrained by uncertain observations | Physical case → observations/operator → priors and discrepancy → inference method → posterior → process interpretation |
| Intercomparison protocol | Questions made answerable through coordinated experiments and diagnostics | Scientific questions → experiment tiers → requested outputs → diagnostic mapping → participation/reuse guidance |
| Review / mechanism synthesis | A unifying physical framework across evidence and scales | Phenomenon → observations → framework → applications across scales → exceptions → unresolved questions |
| Theory / mechanism | A compact physical constraint, hypothesis, or replacement paradigm | Prevailing picture → contradiction/gap → physical hypothesis → formal development → tests → implications and limits |
| Foundation model | Reusable representations or capabilities across heterogeneous tasks | Motivation/data scope → framework → training → capability matrix → downstream tasks → transfer/failure cases |
| Standard research article | A method, diagnostic, or scientific finding not better matched above | Data → methods → results → discussion |

Do not force a resource, protocol, or review into a falsifiable-results template. These papers still need evidence: coverage and comparability for resources; traceability from questions to experiments and diagnostics for protocols; and convergent evidence plus explicit exceptions for reviews.

### Venue track

| Track | Default paper architecture | Emphasis |
|---|---|---|
| Earth-science journal | Use the selected genre; include required front matter and availability statements | Scientific question, provenance, mechanisms, uncertainty, reproducibility |
| ML conference | Usually method- or capability-led; adapt the selected genre to the template | Method novelty, controlled comparisons, ablations, reproducibility |
| Interdisciplinary / workshop | Select the closer track and document deviations | Accessibility across both communities |

Use the target venue's current author instructions for length, required statements, and formatting. Do not infer these from a venue name when they can be checked.

## Select a Voice

Read exactly one primary profile unless the user requests a blend:

| Profile | Default use | File |
|---|---|---|
| Peter Düben | AI Earth-system models, operational forecasting, emulation, data assimilation | `author_profile/dueben_voice_profile.md` |
| Dennis Hartmann | Climate dynamics, feedbacks, variability, physical interpretation | `author_profile/hartmann_voice_profile.md` |
| Kerry Emanuel | Tropical convection, cyclones, theory-led tropical weather | `author_profile/emanuel_voice_profile.md` |

An explicit `voice_profile` in `project_context.md` overrides automatic routing. Profiles control exposition, not conclusions. Never copy signature phrases or imitate personal biography. Preserve the authors' scientific reasoning patterns while keeping the paper's own terminology.

## Build the Evidence Contract

Before drafting, require the following in `project_context.md`:

- Manuscript language and the source of the choice, defaulting to British English when neither the user nor venue specifies one.
- Caption typography as a venue or project preference, including whether descriptive lead-ins use regular or bold weight.
- Canonical result provenance: run, inference checkpoint or episode, forecast length, baseline, source data, aggregation method, and status of each reported result.
- Scientific question and falsifiable central claim.
- Target variable, units, domain, resolution, timescale, initialisation, and lead time where applicable.
- Provenance and role of every observation, reanalysis, simulation, forcing, and derived product.
- Exact train, validation, and test periods/regions plus leakage controls.
- For event data, complete event-level splits and counts before frame, patch, or window generation.
- Baselines and the claim each baseline tests.
- Deterministic, probabilistic, physical, and task-specific metrics with reference forecasts.
- For ensembles, represented uncertainty sources, ensemble size, marginal and joint-distribution diagnostics, and ensemble-mean skill.
- For foundation models, pretraining-mixture dependence, matched transfer controls, adaptation data/compute curves, scaling-factor attribution, and subsystem scope.
- Planned disaggregation across lead time, region, level, season, regime, intensity, and event type as relevant.
- Physical constraints, known biases, failure modes, and uncertainty sources.
- For impacts, the complete chain from physical driver through event distribution, exposure and vulnerability to the decision-relevant quantity, including tail sampling and dependence.
- Code, data, weights, environment, and archive plan.
- Contribution form: finding, resource, protocol, capability, calibration, or synthesis, with its appropriate success criterion.

Treat a missing evidence item as an open question, not prose to fill with confidence.

## Five-Stage Workflow

### 1. Scientific framing

Read `brainstorming_guide.md`. Produce `project_context.md` from `examples/project_context.md`. State what the paper shows, which scientific or operational problem it resolves, and what evidence could falsify the claim.

### 2. Paper architecture

Create a section plan with one claim per section, a claim-to-evidence map, figure plan, and word/page budget. Draft a disposable Introduction 0 to expose framing gaps. For every result figure, record the question, reference, metric, aggregation, uncertainty, and intended takeaway.

### 3. Data, methods, and results

Draft topic sentences before paragraphs. Use:

- `section_rhetorical_moves/introduction.md` and `writing_checklists/intro_questions.md`
- `section_rhetorical_moves/methods.md` and `writing_checklists/methods_questions.md`
- `section_rhetorical_moves/results.md` and `writing_checklists/results_questions.md`
- `section_rhetorical_moves/discussion.md` and `writing_checklists/discussion_questions.md`
- `section_rhetorical_moves/related_work.md` and `writing_checklists/related_work_questions.md`

Write Results as observations followed immediately by the interpretation needed to understand them. Reserve cross-result synthesis, competing mechanisms, uncertainty partitioning, broader implications, and limitations for Discussion unless the selected genre combines Results and Discussion.

### 4. Integration and scientific audit

Check all of the following:

- Every introduction claim maps to a result and every result maps back to a stated question.
- Dataset names, versions, units, grids, periods, regions, lead times, and sample counts agree everywhere.
- “Observation,” “reanalysis,” “analysis,” “simulation,” and “forecast” are not used interchangeably.
- Skill is expressed relative to a named reference where required.
- Aggregate improvements do not hide degraded regions, regimes, levels, seasons, or extremes.
- Statistical uncertainty respects temporal and spatial dependence.
- Physical explanations are supported by diagnostics and alternatives are considered.
- Computational speed claims include hardware, precision, batch size, I/O boundary, and comparison scope.
- Profiling claims distinguish complete task wall time, cumulative timer time, mean time per invocation, rank means, all-rank summaries, and selected-rank measurements. State timer overlap and whether residual categories are measured directly or computed by subtraction.
- Operational comparisons distinguish the forecast core from observations, assimilation/initialisation, ensembles, postprocessing, dissemination, and decision interfaces.
- End-to-end claims define distinct training, deployment, and evaluation boundaries; state-estimation error, observation-system robustness, unseen-location transfer, and task-specific tuning trade-offs are tested.
- Limitations distinguish interpolation from extrapolation and weather predictability from climate credibility.
- Offline or one-step skill is not treated as evidence of online/prognostic stability.
- Cascaded pipelines are evaluated end to end with upstream forecast errors; image similarity is not treated as meteorological or probabilistic skill.
- Marginal calibration is not treated as evidence of spatially and temporally coherent ensemble forecasts; limited-area boundary inputs are included in the operational evidence boundary.
- Prescribed-boundary component skill is not treated as evidence of credible interactive coupling; coupling interfaces, feedbacks, and emergent modes are tested.
- Historical tracking is not treated as evidence of correct individual forcing sensitivities; training, selection, and final-test periods remain distinct.
- The reference hierarchy distinguishes observations, analyses, reanalyses, high-resolution simulations, and nature runs, including their shared biases and uncertainty.

Run `references/scientific_rigor.md`, the relevant section checklist, and `red_team_protocol.md`.

### 5. Final introduction, abstract, and compression

Rewrite the introduction from scratch after the evidence and interpretation stabilize. Promise only what the paper establishes. Then use `references/front_matter.md` to write the title, abstract, Key Points, Plain Language Summary, and availability statements required by the venue. End a standalone Conclusion, or the concluding Discussion when no Conclusion exists, with a concise and impactful sentence that states the strongest evidence-supported scientific or practical implication. Do not end on housekeeping, a generic future-work statement, a repeated limitation, or an unsupported flourish. Apply `author_profile/compression_patterns.md`; preserve caveats, definitions, units, and uncertainty while removing repetition.

## Scientific Language Rules

- Use British English spelling, punctuation, and usage throughout manuscript prose, captions, headings, tables, and author-facing notes unless the user or target venue explicitly requires another variety. Preserve spelling inside quotations, proper names, code, commands, identifiers, bibliography metadata, and official titles.
- Use no semicolons or em dashes in drafted or revised manuscript prose. Recast the relationship with a conjunction, subordinate clause, separate sentence, colon, or parentheses as appropriate. Do not alter required punctuation inside code, equations, URLs, citation data, or quoted source text.
- Do not leave short standalone sentences in manuscript prose. Connect a brief idea to the preceding sentence through an explicit logical relationship, or develop it with the evidence, qualification, or consequence needed to make it substantive. Preserve grammatical boundaries and avoid comma splices or overloaded run-on sentences.
- Use calibrated uncertainty. Distinguish `shows`, `supports`, `suggests`, `is consistent with`, and `cannot distinguish` by evidential strength.
- Reserve causal language for causal identification or a physically supported mechanism. Use association language otherwise.
- Report effect size and uncertainty, not significance alone.
- Define the reference for every skill score and the aggregation for every headline number.
- Avoid “ground truth” for uncertain Earth-system products; name the observing or analysis product.
- Avoid “generalizes” without naming the held-out time, region, regime, resolution, or forcing.
- Avoid “physically consistent” without a tested budget, constraint, scaling, or mechanism.
- Avoid “operational” unless latency, reliability, inputs, update cycle, and deployment constraints are evaluated.
- Keep units attached to quantities and use consistent sign conventions.

## Style and Review Gates

Use `author_profile/voice_profile.md` as the domain-neutral base and the selected author profile as an overlay. Apply `author_profile/accessibility_checklist.md` and `author_profile/de_ai_checklist.md` to every substantive edit.

The audit must report:

| Gate | Evidence |
|---|---|
| Claim–evidence | Claim mapped to figure/table/diagnostic |
| Data integrity | Product, version, role, period, split, units verified |
| Verification | References, metrics, uncertainty, disaggregation verified |
| Physical reasoning | Mechanism and alternative explanations checked |
| Reproducibility | Code/data/weights/environment/archive status checked |
| Prose | Voice, accessibility, terminology, and mechanical checks run |

Do not claim a gate passed without inspecting the relevant artefact or text.

Before delivery, treat the following as blocking gates:

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

## Figures

Read `figure_synthesis_guide.md` for conceptual figures and `figure_templates/venue_styles.md` for style. Data figures require explicit units, coordinate conventions, aggregation, reference period, uncertainty encoding, and accessible colour choices. Make every figure as large as the verified venue template and page geometry permit while preserving aspect ratio, margins, caption placement, and reading order. Do not shrink figures merely to save space unless an explicit page requirement must be met, and then use only the reduction needed to comply without sacrificing legibility. Never leave a figure dangling at the end of a section or the paper: ensure that at least one substantive interpretive paragraph follows it before the next heading or document end. Inspect the rendered paper and adjust the figure callout, float location, or permitted placement controls until this ordering is visible in the output. Inspect rendered figures at final publication size because a checklist cannot establish legibility, scale, or placement.

Treat caption typography as a venue or project preference, not a universal rule. Default to regular-weight captions without bold descriptive lead-ins only when no user, project, template, or venue requirement specifies otherwise.

For an appendix experiment, state enough detail to reproduce its interpretation: predictor aggregation, split-aware preprocessing, regime or subgroup definition, metric and reference, contrast direction, resampling unit and count, multiple-testing correction, effect size, uncertainty, and evidential limitation. Place an appendix figure immediately after its section heading when requested, but retain substantive methodological and interpretive prose after the figure so it does not dangle. Reset and format appendix counters only when required by the venue or project template, and verify the rendered cross-reference, such as `Figure A.1`.

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
- Begin Results subsections with the experiment's purpose, not a result teaser.
- Ensure each figure is followed by substantive interpretation before the next heading.
- Verify requested page placement from the compiled PDF or LaTeX labels, not from source order.
- Use one stable reader-facing term for every method, variable, phase, and system. Define the relationship before using a formal and informal name for the same object.
- Keep the main text centred on the central claim. Move secondary fields, spatial diagnostics, and implementation detail to an appendix only when the main text retains the evidence and limitations needed to understand the experiment.
- Separate measurement, interpretation, and scope: state what was observed, what it supports, and what remains untested. Do not generalise from a single case or imply operational readiness without held-out operational evidence.

## Titles and conclusions

Generate several claim-bounded title candidates and prefer the most natural, specific construction. A reviewer's requested opening such as `On the ...` does not justify awkward grammar or a broader claim.

Match the final section title to the requested relationship between future directions and conclusion. End with the most consequential supported result, not a generic future-work statement.

## Common Requests

### Draft or revise a section

Load the context, selected voice, section move guide, checklist, and scientific rigor reference. Return the draft plus a compact audit table and unresolved evidence gaps.

### Review a paper

Review in this order: scientific claim → data/splits → verification → physical interpretation → uncertainty → reproducibility → structure → prose. Findings must cite the exact location and propose a concrete repair.

### Respond to reviewers

Before revising, build a response matrix with one row per comment and these columns:

- Reviewer request.
- Category: scientific validity, evidence, framing, organisation, terminology, citation, figure design, or placement.
- Manuscript action.
- Exact revised location.
- Verification method.
- Unresolved limitation.

Resolve every comment explicitly. When a requested claim would exceed the evidence, revise the framing and explain the boundary rather than complying literally. Never promise an experiment that has not been authorized or completed.

### Prepare a submission

Verify venue requirements, availability statements, ethical or AI-use disclosures, figure resolution, references, bibliography URLs, supplement links, and all numbers shared across abstract, text, tables, and figures.

Distinguish the main-paper limit from references and appendices. Inspect the rendered PDF and verify the page on which the main conclusion ends, the references begin, and each appendix begins; do not infer compliance from the total PDF page count. When a secondary figure cannot remain legible within the main-paper limit, move it to an appendix or supplement instead of shrinking its typography, while retaining the headline interpretation in the main text.

For Tackling Climate Change with Machine Learning workshop manuscripts, read `references/tccml-neurips.md` and verify it against the supplied template.

Finish every result-changing task with this consistency pass: identify the canonical experiment and source data; regenerate requested artefacts from reproducible scripts; compile the manuscript; inspect relevant pages at final size; search the complete source for stale values and terminology; and report unresolved warnings separately from passed checks.

## Bibliography Requirements

For every `.bib` file created or edited, use citation keys in the form `author_papershortname_year`, for example `nath_replacing_2026`.

- Use the first author's family name, lowercase ASCII, followed by a short distinctive title slug and the four-digit year.
- Join components with underscores; remove spaces, punctuation, diacritics, braces, and LaTeX commands.
- Omit articles and generic stopwords from the title slug. Keep it short while remaining recognisable within the bibliography.
- Resolve collisions deterministically with a lowercase letter after the year: `author_shortname_2026a`, `author_shortname_2026b`.
- When renaming an existing key, update every corresponding `\cite`, `\citep`, `\citet`, `\autocite`, or other citation command across the paper. Never leave duplicate keys or broken references.
- Detect duplicate publications represented by both preprint and journal records. Keep one canonical record, prefer the requested published version, and update every affected citation command.
- Require a nonempty `url` field in every bibliography entry, including entries that predate the current edit. A `doi` field does not replace this requirement; when a DOI exists, prefer its canonical `https://doi.org/...` URL.
- For works without a DOI, use the authoritative publisher, repository, dataset, software-release, standards-body, or institutional record URL. Do not invent a URL.
- Before delivering a created or edited bibliography, scan every entry for a `url` field and test that each URL resolves. Treat any missing or unverified URL as an unresolved bibliography error and report it explicitly; do not present the bibliography as complete.
