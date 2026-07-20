# Project Context: [Paper Name]

## Identity

- **Central claim:** This paper shows that [claim].
- **Falsifier:** The claim would be weakened or rejected if [result].
- **Contribution form:** [finding / model-method / benchmark-resource / protocol / calibration / capability / synthesis / theory-mechanism]
- **Success criterion for this form:**
- **Primary task family:** [forecasting / emulation / downscaling / projection / data assimilation / extremes / impacts-risk / scientific understanding]
- **Secondary families:** [optional]

## Scientific Coordinates

- **Phenomenon and users:**
- **Target variables and units:**
- **Spatial domain and grid:**
- **Vertical coordinate:**
- **Temporal resolution:**
- **Initialization and lead times:**
- **Seasons, regimes, scenarios, or thresholds:**
- **Physical constraints or expected balances:**
- **Out of scope:**

## Venue and Voice

- **Target venue and article type:**
- **Venue track:** [Earth-science journal / ML conference / interdisciplinary]
- **Paper genre:** [benchmark / flagship result / model development / calibration / intercomparison protocol / review / theory-mechanism / foundation model / standard article]
- **Deadline and length limit:**
- **Required statements and supplements:**
- **Voice profile:** [dueben / hartmann / emanuel]

## Data Provenance

| Product and version | Product type | Role | Period/domain | Resolution | Known limitations |
|---|---|---|---|---|---|
| | observation/reanalysis/simulation/forecast/derived | train/tune/test/initialize/force/verify | | | |

## Split and Leakage Controls

- **Training:**
- **Validation:**
- **Testing:**
- **Held-out regions, events, models, or regimes:**
- **Dependence across boundaries:**
- **Preprocessing fit scope:**
- **Potential leakage paths and controls:**
- **Event-level split before frame/window construction:**
- **Seen versus unseen stations/sensors/platforms:**

## Claims and Evidence

| Claim | Figure/table/diagnostic | Reference | Uncertainty | Disaggregation | Failure condition | Status |
|---|---|---|---|---|---|---|
| | | | | | | planned/running/complete |

## Baselines

| Baseline | Why required | Inputs/resolution match | Claim tested |
|---|---|---|---|
| Persistence | | | |
| Climatology | | | |
| Dynamical or operational reference | | | |
| Statistical or ML reference | | | |

## Verification Plan

- **Deterministic metrics and aggregation:**
- **Probabilistic metrics and calibration:**
- **Represented uncertainty sources:** [initial condition / model-process / observation / boundary / forcing / parameter / sampling]
- **Ensemble generation, size, and size sensitivity:**
- **Marginal versus joint spatial-temporal diagnostics:**
- **Limited-area boundary source, latency, uncertainty, and evaluation mask:**
- **Physical diagnostics:**
- **Extreme-event metrics:**
- **Dependence-aware uncertainty method:**
- **Lead-time/region/level/season/regime disaggregation:**
- **Offline or one-step evidence:**
- **Coupled online/prognostic evidence:**
- **Long-rollout/stability evidence:**
- **Cascade stage-wise and end-to-end evidence:**
- **Issuance-time availability of every conditioning input:**
- **Lead-zero state-estimation versus forecast-dynamics evidence:**
- **Observation outage, drift, platform-turnover, and new-sensor tests:**
- **Domain metrics beyond image similarity:**
- **Reference hierarchy and target mismatches:**
- **Prescribed-boundary versus interactively coupled evidence:**
- **Coupling interface, cadence, remapping, and conservation:**
- **Historical tracking versus controlled forcing sensitivity:**
- **Checkpoint/seed selection objective and untouched final test:**
- **Internal-variability or sampling-noise floor:**
- **Impact chain and tail control, if applicable:** [physical driver → hazard distribution → exposure → vulnerability/loss → consequence]

## Genre-Specific Contract

- **Benchmark/resource:** Versions, protected test data, baseline ladder, evaluation code, adoption/reuse criteria.
- **Calibration:** Priors, observation operator, measurement error, model discrepancy, posterior checks.
- **Protocol:** Scientific question → experiment tier → requested output → diagnostic mapping.
- **Review:** Evidence classes, governing framework, exceptions, unresolved questions.
- **Systems-history review:** Progress measure, interacting pillars, comparability breaks, attribution boundary, and future dependency map.
- **Theory/mechanism:** Prevailing picture, unresolved inconsistency, assumptions, proposed constraint, discriminating tests, failure regime.
- **Impacts/risk:** Hazard, exposure, vulnerability/loss, tail dependence, uncertainty propagation, decision-relevant quantity.
- **Foundation model:** Capability matrix across products, missingness, transfer, downstream tasks, extremes, physics, and stability.
- **Foundation transfer:** Scratch/no-diversity/frozen-or-lightweight/full-fine-tune controls; downstream data and compute curves; updated parameters; separated scaling factors.
- **Pretraining mixture:** Product dependence/duplication, fidelity, resolution, period, variables, sampling and loss weights, downstream overlap.
- **Subsystem and omitted exogenous drivers:**
- **Climate emulator:** Component and coupled tests, vertical and slow-mode fidelity, spin-up/drift, budgets, forced sensitivities, internal-variability floor, and stability–accuracy trade-offs.
- **Selected requirements:**

## Uncertainty and Limitations

- **Aleatoric or initial-condition uncertainty:**
- **Model/structural uncertainty:**
- **Internal variability:**
- **Scenario/forcing uncertainty:**
- **Known data and observing-system biases:**
- **Interpolation versus extrapolation boundary:**
- **Operational or societal limitations:**

## Reproducibility

- **Code and license:**
- **Exact archived version/DOI:**
- **Data access and licenses:**
- **Weights/checkpoints:**
- **Environment and random seeds:**
- **Training and postprocessing scripts:**
- **Figure-generation scripts:**
- **Hardware, precision, runtime, and system boundary:**
- **Operational stack included/excluded:** [observations / QC / assimilation-initialization / forecast core / ensembles / postprocessing / dissemination / decision interface]
- **Training / deployment / evaluation boundaries:**
- **End-to-end tuning target and non-target trade-offs:**

## Paper Architecture

| Section | Key claim or purpose | Evidence | Figures/tables | Word/page budget |
|---|---|---|---|---|
| [Genre-appropriate section] | | | | |

## Locked Decisions

1.

## Open Questions and Blockers

1.
