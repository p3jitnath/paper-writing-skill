# Paper Genres in AI Weather and Climate Research

Genre controls the argument and section sequence; venue controls formatting and compression.

## Theory or mechanism paper

State the accepted picture, expose the unresolved contradiction or missing constraint, and replace it with a compact physical hypothesis or organizing framework. Define assumptions and variables before formal development. Test the central constraint with a hierarchy suited to the claim—scaling argument, simple model, controlled simulation, observations, or multi-model evidence—then derive implications and delimit failure conditions. A short mechanism letter may use Introduction → hypothesis/model test → results → implications; an extended theory paper may apply the framework across several phenomena before synthesis.

## Benchmark or resource

Establish why comparison is currently unreliable, define the dataset/task and design choices, specify splits and metrics, provide baselines spanning simple to operationally meaningful methods, expose known limitations, and make code/data usable. Protect public test data from repeated tuning and version all benchmark artifacts.

## Flagship result

Use a compressed results-led main text. Introduce the gap and named approach quickly, then organize sections around the strongest capabilities or scientific findings. Put necessary interpretation beside each result. Move implementation detail, secondary metrics, and exhaustive sensitivity tests to Methods, Extended Data, or supplement without hiding validity-critical information.

## Model development

Define the reference hierarchy and model boundary. Separate offline component accuracy from coupled online/prognostic performance, and prescribed-boundary behavior from interactive coupling. Test stability, spin-up, drift, physical budgets, resolution, regimes, forced sensitivities, and compute. For component emulators, verify full vertical structure and relevant slow modes; for coupled emulators, verify exchanged fields, interface conservation, feedbacks, and emergent coupled variability. Explain trade-offs where a correction improves short forecasts but degrades climate statistics, forced trends, stability, or another variable.

## Calibration or inverse problem

Describe the physical case, measurements, observation operator, priors, parametric uncertainty, observational error, and model discrepancy. Report posterior behavior and predictive consequences. Use sensitivities or partial updates to interpret why the calibration moves parameters. Do not absorb structural model error into overconfident parameter estimates.

## Intercomparison protocol

Start from community scientific questions. Map each question to experiment tiers, control and perturbation design, requested variables/frequencies, diagnostics, and expected inference. Distinguish mandatory core experiments from optional extensions. Optimize for participation, comparability, and reuse rather than headline performance.

## Review or mechanism synthesis

Define the phenomenon with observations, develop the governing physical framework, apply it across spatial and temporal scales, explain exceptions, and end with unresolved questions. Organize around causal structure rather than paper chronology. Reviews require dense citations and explicit boundaries between established, emerging, and speculative claims.

For a systems-history review, replace the phenomenon sequence with measurable progress → interacting pillars → how the pillars co-evolved → present system boundary → future dependency map. In weather prediction, the pillars commonly include observations, data assimilation and initialization, dynamical and physical modeling, ensemble uncertainty, computing and data handling, verification, and operational delivery. Avoid a chronology of inventions or an architecture-only account.

## Foundation model

Define what makes the representation reusable. Describe heterogeneous products and missingness, architecture and pretraining, then evaluate a capability matrix: reconstruction, forecasting, probabilistic behavior, sparse inputs, missing variables, unseen products/models, downstream adaptation, extremes, physical relationships, and long-rollout stability. Establish transfer with controlled pretrained-versus-scratch and frozen-versus-fine-tuned comparisons at matched downstream data and compute. Report adaptation curves across task data and compute, not only final case studies. A collection of heterogeneous applications cannot by itself establish a reusable foundation representation.

## Standard research article

Use Data → Methods → Results → Discussion when no specialized genre fits. Combining Results and Discussion is acceptable when local physical interpretation is essential and the venue supports it.
