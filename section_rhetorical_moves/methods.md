# Writing Data and Methods

## Move 1: Scientific task and coordinates

Define variables, units, domain, grid, vertical coordinate, period, initialization, lead time, and intended inference.

## Move 2: Data provenance

Identify each product and version, its role, processing, known limitations, and relationship to observations or models.

For observation-to-forecast systems, specify sensor processing level, calibration/geolocation or retrieval dependencies, gridding, time windows, latency, metadata, quality control, missingness, and coverage. Define separate training, deployment, and evaluation system boundaries and identify every NWP-derived supervisory target or static input.

## Move 3: Splits and leakage controls

Give exact temporal, spatial, event, ensemble, and model partitions. State where preprocessing statistics are fitted and how dependence across boundaries is handled.

## Move 4: Model or analytical method

Explain each component by the scientific or computational constraint it addresses. Provide equations, architecture, losses, physical constraints, and training procedure at reproducible detail.

## Move 5: Baselines and verification

Name references, matching conditions, metrics, aggregation, uncertainty, and disaggregation. Define every skill score and event threshold.

State the reference hierarchy and whether comparisons use observations, analyses, reanalyses, simulations, or nature runs. Separate offline/one-step tests from coupled online/prognostic evaluation.

For component and coupled emulators, define prescribed boundary inputs, exchanged state and flux variables, coupling cadence, remapping, conservation corrections, initialization, spin-up, and component pretraining or coupled fine-tuning. State which periods and rollout metrics select checkpoints or random seeds and preserve an untouched final test.

## Move 6: Reproducibility

State code, data, weights, environments, seeds, compute, archive versions, licenses, and restrictions.

For calibration, additionally define priors, observation operators, measurement uncertainty, model discrepancy, and posterior checks. For protocols and benchmarks, version the experiment specification, splits, requested outputs, evaluation code, and baselines.
