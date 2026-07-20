# Example Project Context: Tropical-Cyclone Intensity Prediction

> Illustrative planning example. It contains no completed or fabricated result.

## Identity

- **Central claim:** A physics-guided probabilistic model improves tropical-cyclone intensity prediction in selected lead-time and intensity regimes.
- **Falsifier:** Skill does not exceed matched operational/statistical references, probabilities are miscalibrated, or gains vanish for rapid-intensification events.
- **Primary contribution:** Predictive with physical analysis.
- **Primary task family:** Weather forecasting / extremes and hazards.

## Scientific Coordinates

- **Target:** Intensity tendency and rapid-intensification probability with operational definitions and units.
- **Domain:** Named basins; storm-relative environmental and inner-core predictors.
- **Lead times:** Prespecified operational lead times.
- **Voice:** Kerry Emanuel.

## Data and Splits

Use named best-track, environmental analysis/forecast, and satellite products with versions. Split by storm and year, preserve storm dependence in uncertainty, and fit thresholds/calibration only on training and validation storms.

## Evidence Contract

| Claim | Evidence | Failure condition | Status |
|---|---|---|---|
| Intensity skill | Error and skill by lead time, basin, intensity, and storm regime | Aggregate gain driven by weak storms | Planned |
| Probability quality | Reliability, proper scores, resolution, sharpness | Rare-event discrimination without calibration | Planned |
| Physical interpretation | Ventilation, potential intensity, ocean coupling, and time-scale diagnostics | Attribution is predictive association only | Planned |

## Paper Architecture

Earth-science journal track: Introduction → Data and Storm Sampling → Physics-Guided Method → Forecast Verification → Physical Diagnostics → Hazard Limitations → Conclusions.
