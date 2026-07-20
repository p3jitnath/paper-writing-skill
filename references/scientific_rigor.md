# Scientific Rigor for AI Weather and Climate Papers

## 1. Product identity and provenance

For every dataset, record the product name, version, provider, access date, variable definition, units, grid, vertical coordinate, time coverage, and processing. State whether it is an observation, analysis, reanalysis, simulation, forecast, or derived product. A reanalysis is not direct observation and can share model or assimilated-data dependencies with training inputs.

For observation-to-forecast systems, name sensor processing level, calibration, geolocation, retrievals, homogenization, gridding, quality control, temporal window, latency, metadata, and missingness handling. Reserve `raw observations` for unprocessed sensor measurements; level-1 products and gridded composites remain processed observations. Distinguish independence from NWP products at deployment from dependence on analyses, reanalyses, simulators, or NWP-derived static fields during pretraining and supervision.

## 2. Leakage audit

Check temporal adjacency, overlapping forecast windows, repeated storms, stations, regions, ensemble members, parent climate models, and shared regridding or bias-correction statistics. Fit normalization, climatology, imputation, feature selection, and calibration only on permitted data. Document whether targets or verification products inherit information from training inputs.

For event datasets, split by complete storm or event before constructing frames, patches, or forecast windows; report event counts by basin and split. Check whether storm-centered crops, empirically chosen bounding boxes, augmentation, or repeated adjacent frames leak event identity. For cascaded systems, fit and select every stage without access to downstream test targets.

## 3. Fair baselines

Use the references required by the claim, commonly persistence, climatology, an operational or dynamical forecast, a statistical method, and a competitive ML model. Match initialization, inputs, resolution, domain, lead time, postprocessing, and verification grid. If matching is impossible, state the asymmetry and restrict the claim.

Build a reference hierarchy. State whether each target is an observation, operational analysis, reanalysis, high-resolution simulation, nature run, or another model. A fine-grid simulation can be the intended reference without being observational truth. When methods are verified against different analysis products, quantify or discuss how the target mismatch affects the comparison.

When an observation-initialized system is trained or verified against a reanalysis, evaluate the estimated initial state at lead time zero and separate initialization error from subsequent forecast growth. Where possible, verify state estimation against withheld independent observations as well as the supervising reanalysis. Note when the chosen verification product is closer to one system's training target or older than a competing operational analysis.

## 4. Forecast verification

Report skill as a function of lead time and relevant region, level, season, regime, and intensity. Name the reference forecast for skill scores. Pair aggregate scores with diagnostics that expose displacement, amplitude, spatial structure, and extremes.

Image-similarity metrics such as SSIM, PSNR, or FID do not by themselves establish meteorological forecast skill. For tropical cyclones, evaluate track, intensity, size, structure, rainfall amount and location, threshold exceedance, and basin/regime behavior as relevant, against persistence, climatology, operational or dynamical guidance, and competitive ML baselines. Define any claimed forecast horizon using a prespecified, physically meaningful criterion rather than a visually chosen metric dip or arbitrary threshold.

For probabilistic output, assess reliability/calibration, resolution, sharpness, and proper scores. Inspect ensemble spread and outcome-conditioned behavior. Deterministic accuracy cannot establish probabilistic quality.

State which uncertainty sources the ensemble represents: initial-condition, model/process, observation, boundary, forcing, parameter, or sampling uncertainty. An ensemble initialized from one unperturbed analysis cannot by itself represent initial-condition uncertainty. Report ensemble-mean deterministic skill separately from distributional skill, and test whether conclusions stabilize with ensemble size.

Marginal CRPS and spread–skill ratios do not establish a coherent joint forecast distribution. Pair marginal scores with diagnostics of spatial and temporal dependence, spectra or structure, multivariate and extreme-event behavior, and artifacts. When a proper-score fine-tuning term trades calibration against spatial coherence, report the trade-off rather than selecting only the best marginal score.

Treat diffusion samples as probabilistic forecasts only when sampling design, ensemble size, calibration, spread, and outcome-conditioned verification are reported. A single selected sample or image-quality score does not demonstrate uncertainty quality.

Separate offline or one-step component error from coupled online/prognostic performance. Evaluate drift, feedbacks, numerical stability, time-mean biases, and trade-offs across variables and timescales. An offline improvement does not establish a useful coupled correction.

For coupled systems, evaluate components both with prescribed boundary conditions and after interactive coupling. Document exchanged state and flux variables, spatial and temporal remapping, coupling cadence, conservation across interfaces, initialization and spin-up, component-specific drift, feedbacks, and emergent coupled modes. Stability of each uncoupled component does not establish stability or credible variability after coupling.

## 5. Climate credibility

Separate forced response, internal variability, model uncertainty, and scenario uncertainty. Test temporal and spatial transfer and, when claimed, unseen forcing levels or parent models. Evaluate means, variability, trends, distributions, spatial covariance, spectra, teleconnections, extremes, and relevant budgets. Visual realism is not physical credibility.

Historical trend reproduction under prescribed boundary conditions does not establish correct sensitivity to each forcing. Use controlled or factorial perturbations where possible to separate responses to sea-surface temperature, greenhouse gases, sea ice, aerosols, or other drivers. State whether each forcing lies within the training range and identify physically implausible compensating sensitivities even when the combined historical trend is accurate.

For climate emulators, report the checkpoint and seed selection target as well as the training loss. If selection uses multi-year rollout statistics, keep a genuinely held-out final test and disclose every period used for fitting, checkpointing, or seed selection. Where internal variability limits agreement, compare emulator error with an identically forced reference ensemble or another justified sampling-noise estimate.

## 6. Extremes and hazards

Define event thresholds and independence. Report sample size and dependence-aware uncertainty. Use metrics appropriate to rarity, location, timing, intensity, probability, and decision context. Do not infer changes in rare-event tails from bulk-error improvements alone.

For impact or risk claims, write the full chain explicitly: climate forcing or predictor → hazard frequency and intensity distribution → location and exposure → vulnerability or loss function → expected or tail consequence. Separate changes in hazard from changes in exposure and vulnerability. Because nonlinear losses may be dominated by rare intense events, show which portion of the distribution controls the result and propagate uncertainty through the chain. A robust basin-wide mean response does not establish a robust landfall or damage response.

## 7. Physical interpretation

Feature importance, attention, saliency, and latent correlations are diagnostic associations. A mechanism claim needs physical expectations plus budgets, perturbations, controlled experiments, process diagnostics, or convergent evidence. Consider alternative explanations and shared biases.

For a theory or mechanism claim, state the prevailing explanation, the inconsistency it leaves unresolved, the proposed constraint and assumptions, and at least one discriminating test. Distinguish an organizing approximation from a universal law and state the regimes in which its balance or equilibrium assumption may fail.

For calibration and inverse problems, separate parameter uncertainty, observation error, initial/forcing uncertainty, and structural model discrepancy. Define the observation operator and priors. Do not force parameters to compensate silently for a model's inability to represent an observed quantity.

## 8. Statistical uncertainty

Respect temporal, spatial, storm, ensemble, and model dependence in confidence intervals and significance tests. Report effect sizes. Correct or qualify multiple comparisons. Distinguish variability across samples, seeds, initial conditions, models, and scenarios.

## 9. Computational and operational claims

For runtime or energy comparisons, report hardware, precision, batch size, preprocessing, I/O, rollout length, ensemble size, and included system boundary. Operational claims also require data availability, latency, update cadence, reliability, calibration, failure handling, and integration constraints.

Define whether a comparison covers only the forecast core or the full prediction system: observing network, quality control, data assimilation and initialization, model integration, ensemble generation, postprocessing, dissemination, and human or automated decision interfaces. A fast forecast core is not an end-to-end replacement for an operational system. When comparing AI with NWP, credit analysis and reanalysis inputs to the observing and assimilation infrastructure that produced them.

For an `end-to-end` claim, provide separate boundaries for training, deployment, and evaluation. Include external calibration/geolocation, preprocessing and gridding, data acquisition and delivery, static fields, state estimation, forecast generation, downstream decoding, and maintenance. Measure total latency and resources from the earliest required observation through the delivered product, not GPU inference alone.

Test robustness to observation outages, changing coverage, latency, instrument drift, platform replacement, and genuinely new sensors. Separate temporal transfer at previously seen stations from spatial transfer to unseen locations. If end-to-end fine-tuning targets one region, variable, station network, or lead time, report performance changes elsewhere and guard against using evaluation targets during tuning.

Verify that every conditioning input exists at issuance time and distinguish analysis or reanalysis conditioning from true forecast guidance. If deployment substitutes a different upstream forecast product, test the resulting distribution shift and propagate its error through every cascade stage. Claims of affordability, accessibility, near-real-time use, or suitability for vulnerable regions require an explicit deployment boundary, total pipeline latency and cost, data-delivery assumptions, and comparison with locally available alternatives.

For limited-area forecasts, treat lateral boundary conditions as forecast inputs with their own uncertainty and latency. Distinguish controlled experiments using reference or archived boundaries from operational evaluation using a global forecast; exclude non-forecast boundary cells from interior skill summaries or report them separately.

## 10. Reproducibility

Archive the exact code version with a persistent identifier where possible. Provide data access, licenses, preprocessing, splits, environments, random seeds, training and postprocessing scripts, weights or a justified restriction, and figure-generation code. Ensure availability links resolve before submission.

## 11. Evidence ladders and reusable artifacts

When using idealized models or testbeds, state what each level establishes and what remains before transfer to a realistic model. Use a progression such as conceptual test → idealized physical model → intermediate coupled model → realistic forecast/climate configuration. Do not imply that stability in an idealized setting guarantees stability in a GCM.

For benchmarks, version datasets, splits, evaluation code, and baselines; separate validation from a protected test period and warn against repeated test tuning. For intercomparison protocols, map every scientific question to experiment tiers, control/perturbation design, requested variables and frequencies, and planned diagnostics.

For foundation models, evaluate capabilities separately across dense, sparse, missing-variable, unseen-product, unseen-model, downstream-task, probabilistic, extreme-event, physical-consistency, and long-rollout settings. Case studies complement but do not replace systematic capability evaluation.

Audit every pretraining product by type, fidelity, resolution, variables, period, parent model, initialization, and relationship to downstream targets and baselines. Detect duplicate or dependent states across analyses, reanalyses, forecasts, ensemble means, and climate simulations. Explain mixture sampling and loss weighting so a large nominal hour count is not mistaken for independent information.

Support a foundation-model claim with matched transfer controls: training from scratch, the same architecture without diverse pretraining, frozen or lightweight adaptation, and full fine-tuning where feasible. Report downstream skill against task data volume, adaptation compute, parameters updated, and inference cost. Separate gains from model size, data quantity, data diversity, resolution transfer, architecture, and fine-tuning recipe. A scaling-law claim needs enough scales and controls to distinguish parameter scaling from tokens, compute, data loading, and model selection.

Name the actual subsystem and variables represented; an atmospheric model is not automatically an Earth-system model. If an application omits causal exogenous drivers such as emissions, land-use change, interventions, or boundary forcings, restrict claims to the evaluated historical forecast distribution. Skill from persistence and correlations does not establish response to new policies, shocks, or scenarios.

For historical or systems reviews, define a consistent progress measure and document changes in observing systems, verification practice, operational configuration, and archives that affect comparability over time. Attribute progress across interacting components rather than assigning it to the most visible algorithm. Build future roadmaps as dependencies and trade-offs among science, observations, uncertainty, computing, energy, data movement, reliability, and user value.

## Audit output

Return findings as `CRITICAL`, `MAJOR`, or `MINOR`, with location, affected claim, evidence, and concrete repair. Data leakage, contradictory product identity, invalid references, and unsupported causal or operational claims are critical.
