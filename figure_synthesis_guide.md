# Figures for AI Weather and Climate Papers

## Start with the scientific question

For every figure, record the claim, data product/version, variable and units, coordinates, domain, period, aggregation, reference, uncertainty, and expected reader takeaway in `figure_spec.md`.

## Data-figure archetypes

| Archetype | Use | Required checks |
|---|---|---|
| Geospatial map | Location and spatial structure | Projection, extent, color scale, masks, area weighting |
| Vertical section / profile | Atmospheric or ocean structure | Vertical coordinate, orientation, units, terrain/mask |
| Hovmöller / time–distance | Propagation and evolution | Axis direction, averaging band, calendar/time convention |
| Lead-time skill curve | Forecast degradation | Reference forecast, confidence interval, sample consistency |
| Reliability / rank diagnostic | Probabilistic quality | Bin counts, sample size, calibration reference |
| Spectrum / scale diagnostic | Variability across scales | Transform, normalization, sampling, resolved scales |
| Extreme-value figure | Tails and hazards | Threshold, return period, dependence, uncertainty |
| Composite / anomaly | Regime or event structure | Baseline climatology, event definition, sample count, significance |
| Budget / mechanism | Physical explanation | Terms, sign convention, closure residual, units |

Data figures should be produced from versioned scripts, not generative imagery.

## Conceptual-figure archetypes

- Earth-system component or coupling diagram.
- Forecast, assimilation, or postprocessing workflow.
- Hybrid physics–ML architecture with physical quantities on arrows.
- Scale hierarchy across space, time, and model resolution.
- Mechanism schematic that distinguishes established relationships from hypotheses.
- Data provenance and split diagram showing train, validation, test, and verification products.

Use `figure_templates/figure_spec_template.md`, `venue_styles.md`, and the relevant prompt or TikZ template. Generative tools may assist conceptual diagrams, but verify every label, arrow, physical relationship, and coordinate manually.

## Critique

1. Does the figure answer one stated question?
2. Can the reader identify product, variable, units, domain, period/lead time, and aggregation?
3. Are uncertainty and sample support visible?
4. Does color remain interpretable for color-vision deficiencies and grayscale printing?
5. Are maps projected and weighted appropriately?
6. Is the caption self-contained: panel encoding, products, variables, units, domain, period/lead time, reference, sampling, uncertainty, and principal comparison?
7. Is all text legible at final publication size?
