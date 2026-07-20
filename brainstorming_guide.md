# Structured Brainstorming for AI Weather and Climate Papers

Use these phases to create `project_context.md`. Ask questions interactively; accept “unknown” and record it as an open item. Do not invent results, dataset properties, or venue requirements.

## Phase 1: Scientific problem

1. What Earth-system phenomenon or decision is affected, and at what spatial and temporal scales?
2. Who needs the result: scientists, forecasters, climate-service providers, model developers, or affected communities?
3. What fails today: forecast skill, physical fidelity, resolution, compute cost, understanding, uncertainty, or usability?
4. Is the limitation caused by data, model structure, physical assumptions, scale separation, compute, or evaluation design?
5. Complete: “This paper shows that ___.” What observation would falsify it?
6. Is the contribution a finding, model/method, benchmark/resource, intercomparison protocol, calibration, capability, or synthesis? What establishes success for that contribution form?

## Phase 2: Scientific coordinates

7. What variables are predicted or analyzed, with units and sign conventions?
8. What domain, grid, vertical coordinate, resolution, sampling frequency, initialization, and lead time apply?
9. What weather regimes, seasons, climate states, forcing scenarios, and event thresholds define scope?
10. Which quantities are inputs, targets, diagnostics, and evaluation references?
11. What physical constraints, conservation laws, balances, symmetries, or known scaling relationships matter?
12. What is explicitly outside scope?

## Phase 3: Data provenance and splits

13. List every observation, reanalysis, operational analysis, simulation, forecast archive, and derived product by name and version.
14. For each product, is it used for training, tuning, testing, initialization, forcing, or verification?
15. What are the exact train, validation, and test years? Are neighboring samples correlated across the split boundary?
16. Are regions, stations, storms, ensemble members, or climate models shared across splits?
17. Could preprocessing, normalization, climatology, bias correction, interpolation, or target construction leak test information?
18. Where does the evaluation product inherit information from the training product or assimilated observations?
19. What sampling, observing-system, missingness, homogenization, or reanalysis biases affect interpretation?

## Phase 4: Baselines and verification

20. Which references are mandatory: persistence, climatology, operational NWP, dynamical model, statistical method, or competitive ML model?
21. What claim does each baseline test, and is the comparison matched in inputs, resolution, initialization, compute, and postprocessing?
22. Which deterministic metrics measure amplitude and spatial structure? Which reference defines skill?
23. For probabilistic outputs, how will calibration, reliability, resolution, sharpness, and spread be assessed?
24. How will performance be disaggregated across lead time, region, level, season, regime, intensity, and event type?
25. How will extremes be evaluated without letting common events dominate? Are thresholds fixed, percentile-based, or impact-based?
26. What uncertainty interval or resampling method respects temporal, spatial, storm, or ensemble dependence?
27. What physical diagnostics test budgets, spectra, covariance, teleconnections, propagation, or stability?
28. What failure result would weaken each claim, and how will it be reported?
29. Which evidence is offline/one-step, coupled online/prognostic, or long-rollout? What trade-offs appear across those levels?

## Phase 5: Task-specific credibility

### Forecasting and nowcasting

30. Does skill persist across useful lead times and against operationally meaningful references?
31. Are initialization, latency, required observations, update cadence, and postprocessing compatible with the claimed use?
32. For ensembles, which uncertainty sources are represented, and how will marginal calibration, joint coherence, ensemble-mean skill, and ensemble-size sensitivity be tested?
33. For limited-area forecasts, where do boundary conditions come from, how uncertain and timely are they, and which cells count toward forecast skill?

### Emulation and downscaling

34. Does the model remain stable and physically plausible beyond one-step or in-distribution tests?
35. Are unseen periods, regions, forcing levels, models, or resolutions tested?
36. Does added small-scale structure contain information rather than visually plausible noise?
37. For a climate emulator, what is tested offline, with prescribed boundaries, and with interactive coupling?
38. Are mean state, drift, vertical structure, variability across timescales, budgets, forced sensitivities, and coupled modes evaluated separately?
39. What objective and periods select checkpoints or random seeds, and what final test remains untouched?

### Climate projection and understanding

40. How are forced response, internal variability, model uncertainty, and scenario uncertainty separated?
41. Which diagnostics support the proposed mechanism, and which alternative explanations remain viable?

### Extremes and hazards

42. Are tail estimates supported by sample size and dependence-aware uncertainty?
43. Does the metric reflect timing, location, intensity, probability, or decision value relevant to the claim?
44. If an impact is claimed, what are the hazard, exposure, vulnerability or loss, and decision layers? Which tail controls the result, and how is uncertainty propagated between layers?

## Phase 6: Paper and venue

45. Which paper genre applies: benchmark, flagship result, model development, calibration, intercomparison protocol, review, theory/mechanism, foundation model, or standard research article?
46. What venue and article type are targeted? Is the structure Earth-science-journal or ML-conference first?
47. What are the current word/page, figure, supplement, Key Points, Plain Language Summary, availability, and disclosure requirements?
48. Which three closest papers define the expected evidence and writing architecture?
49. Which voice profile applies: Düben, Hartmann, or Emanuel? Record any explicit override.
50. Build the claim–evidence table:

| Claim | Evidence | Reference | Disaggregation | Failure condition | Status |
|---|---|---|---|---|---|
| | | | | | |

51. Build the section and figure plan using the selected genre rather than a universal template:

| Section | Key claim | Evidence | Figures/tables | Budget |
|---|---|---|---|---|
| | | | | |

52. What decisions are locked, what results are pending, and what issues block drafting?

## Output

Create `project_context.md` from `examples/project_context.md`. Add it to `.gitignore` unless the user explicitly wants strategic notes committed. Then draft Introduction 0 as a disposable framing test; leave unsupported numerical claims as placeholders.
