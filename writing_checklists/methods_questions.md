# Data and Methods Checklist

Select questions relevant to the requested change and research genre. Weather/climate items apply only to those claims; this is not a required full audit for a local edit.

- Are variables, units, grids, levels, periods, initialization, and lead times explicit?
- Is every product named, versioned, classified, and assigned a role?
- For observations, are processing level, calibration/geolocation, retrieval or gridding, time window, latency, metadata, quality control, and missingness explicit?
- Are training, deployment, and evaluation boundaries distinguished, including all NWP-derived supervision and static inputs?
- Are train/validation/test splits exact and leakage paths addressed?
- For event data, are complete storms/events split before frames, patches, crops, or windows are generated?
- For cascades, are stage-wise inputs, target availability, training/selection boundaries, and end-to-end inference reproducible?
- Are preprocessing, climatology, bias correction, and calibration fit on permitted data only?
- Does each model component answer a stated scientific or computational need?
- Does each comparison identify changed factors and held-fixed controls, distinguishing a component test from a system comparison?
- Are relevant assumptions, index sets, stabilisers, theoretical objectives, estimators, and numerical approximations distinguished?
- Do computational claims identify operation-count conventions, overhead, and the quantity actually measured?
- Are baselines matched in inputs, resolution, initialization, postprocessing, and verification grid?
- Is the reference hierarchy explicit, including mismatched analysis products or simulation references?
- Are metrics, references, thresholds, aggregation, and dependence-aware uncertainty defined?
- Are represented uncertainty sources, ensemble generation, member count, and ensemble-size sensitivity defined?
- For limited-area models, are boundary source, latency, perturbations, remapping, and evaluated interior domain explicit?
- Are offline/one-step and online/prognostic tests separated?
- For coupled emulators, are exchanged variables, remapping, cadence, conservation, initialization, spin-up, pretraining, and coupled fine-tuning reproducible?
- Are training, checkpoint/seed selection, and final-test periods and objectives explicitly separated?
- For foundation models, are mixture sampling, fidelity and loss weighting, cross-product dependence, downstream overlap, adaptation method, updated parameters, and compute explicit?
- For calibration, are priors, the observation operator, measurement error, and model discrepancy explicit?
- Can another researcher reproduce training, inference, postprocessing, and every figure?
