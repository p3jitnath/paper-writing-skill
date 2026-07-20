# Example Project Context: AI Diagnostics of Cloud Feedback

> Illustrative planning example. It contains no completed or fabricated result.

## Identity

- **Central claim:** A constrained ML diagnostic identifies a cloud-regime relationship that helps explain intermodel spread in a specified feedback.
- **Falsifier:** The relationship is not robust across models/periods, disappears under dependence-aware uncertainty, or lacks support from radiative and circulation diagnostics.
- **Primary contribution:** Physical and diagnostic.
- **Primary task family:** Climate projection / scientific understanding.

## Scientific Coordinates

- **Targets:** Cloud-radiative and circulation diagnostics with explicit sign conventions.
- **Domain:** Tropical and subtropical domains defined before analysis.
- **Timescale:** Monthly to interannual; forced response separated from internal variability.
- **Voice:** Dennis Hartmann.

## Data and Splits

Use versioned CMIP-class simulations and named satellite products. Hold out entire models for transfer tests; do not split adjacent months randomly. Record forcing experiments, ensemble members, calendars, regridding, and observational uncertainty.

## Evidence Contract

| Claim | Evidence | Failure condition | Status |
|---|---|---|---|
| Predictive relationship | Held-out-model performance with dependence-aware intervals | Relationship confined to training models | Planned |
| Physical mechanism | Radiation, moisture, stability, and circulation budgets | Feature importance lacks convergent physical support | Planned |
| Projection relevance | Forced-response and internal-variability separation | Association reflects internal variability or shared bias | Planned |

## Paper Architecture

Earth-science journal track: Introduction → Data and Diagnostics → Constrained ML Method → Results → Physical Interpretation → Uncertainty and Limitations → Conclusions.
