# Example Project Context: Global Medium-Range ML Forecasting

> Illustrative planning example. It contains no completed or fabricated result.

## Identity

- **Central claim:** A coupled atmosphere–surface ML model can improve selected medium-range forecast diagnostics while reducing forecast-production cost.
- **Falsifier:** The claim fails if gains disappear against matched operational references, degrade calibration or extremes, or produce unstable surface coupling.
- **Primary contribution:** Predictive and computational.
- **Primary task family:** Weather forecasting / Earth-system emulation.

## Scientific Coordinates

- **Targets:** Upper-air and surface state variables with product-native SI units.
- **Domain:** Global; native grid and verification regridding recorded per experiment.
- **Initialization/lead time:** 00/12 UTC initializations; 6-hour steps through day 10.
- **Voice:** Peter Düben.

## Data and Splits

| Product | Type | Role | Split |
|---|---|---|---|
| Named reanalysis/version | Reanalysis | Training and validation targets | Non-overlapping historical years |
| Operational forecast archive/version | Forecast | Dynamical reference | Held-out test years |
| Independent observations | Observation | Selected verification | Held-out test years |

Fit normalization and climatology on training years only. Audit overlapping forecast windows and shared assimilated observations before interpreting independence.

## Evidence Contract

| Claim | Evidence | Failure condition | Status |
|---|---|---|---|
| Forecast skill | Lead-time curves against persistence, climatology, operational NWP, and competitive ML | Gain absent across matched fields or regimes | Planned |
| Probabilistic quality | Proper scores, reliability, spread–skill | Deterministic gain accompanies worse calibration | Planned |
| Coupled fidelity | Surface budgets, drift, regional/seasonal diagnostics | Unphysical drift or budget degradation | Planned |
| Computational value | Matched hardware/system-boundary benchmark | Advantage disappears with I/O or ensemble scope | Planned |

## Paper Architecture

Earth-science journal track: Introduction → Data → Coupled Model → Verification → Physical and Computational Analysis → Discussion → Conclusions.
