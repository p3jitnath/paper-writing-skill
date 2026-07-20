---
name: paper-writing
description: Research-paper planning, drafting, scientific review, and revision for work at the intersection of artificial intelligence and weather or climate modeling. Use for papers on weather forecasting, nowcasting, Earth-system emulation, climate downscaling, projections, data assimilation, extremes and hazards, hybrid physics-ML models, or scientific understanding with AI. Trigger for paper outlines, .tex edits, abstracts, methods, results, discussions, rebuttals, camera-ready revisions, figures, verification design, data leakage checks, physical-consistency audits, reproducibility statements, and submissions to Earth-science journals or ML conferences.
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
| Model development | A model or coupling strategy with demonstrated behavior | Reference hierarchy → model/method → offline tests → online/prognostic tests → physical diagnostics → discussion |
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

- Scientific question and falsifiable central claim.
- Target variable, units, domain, resolution, timescale, initialization, and lead time where applicable.
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
- Operational comparisons distinguish the forecast core from observations, assimilation/initialization, ensembles, postprocessing, dissemination, and decision interfaces.
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

Rewrite the introduction from scratch after the evidence and interpretation stabilize. Promise only what the paper establishes. Then use `references/front_matter.md` to write the title, abstract, Key Points, Plain Language Summary, and availability statements required by the venue. Apply `author_profile/compression_patterns.md`; preserve caveats, definitions, units, and uncertainty while removing repetition.

## Scientific Language Rules

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

Do not claim a gate passed without inspecting the relevant artifact or text.

## Figures

Read `figure_synthesis_guide.md` for conceptual figures and `figure_templates/venue_styles.md` for style. Data figures require explicit units, coordinate conventions, aggregation, reference period, uncertainty encoding, and accessible color choices. Inspect rendered figures at final publication size; a checklist cannot establish legibility.

## Common Requests

### Draft or revise a section

Load the context, selected voice, section move guide, checklist, and scientific rigor reference. Return the draft plus a compact audit table and unresolved evidence gaps.

### Review a paper

Review in this order: scientific claim → data/splits → verification → physical interpretation → uncertainty → reproducibility → structure → prose. Findings must cite the exact location and propose a concrete repair.

### Respond to reviewers

Classify each comment as scientific validity, missing evidence, interpretation, reproducibility, framing, or presentation. Draft a response that states the change, location, and evidence. Never promise an experiment that has not been authorized or completed.

### Prepare a submission

Verify venue requirements, availability statements, ethical or AI-use disclosures, figure resolution, references, supplement links, and all numbers shared across abstract, text, tables, and figures.
