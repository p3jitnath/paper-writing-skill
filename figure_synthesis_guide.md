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

## Figure scale

Use the largest figure footprint allowed by the verified venue template and available page geometry. Prefer full text width for figures whose panels, maps, labels, or comparisons benefit from it, and use the maximum compliant column width for figures that remain in one column. Preserve the aspect ratio, page margins, caption, reading order, and space for the substantive paragraph that must follow the figure.

Do not reduce a figure merely to make the manuscript shorter. Reduce it only when a verified page limit or explicit layout requirement must be met, and apply the smallest reduction that achieves compliance while keeping all scientific content legible. If reduction makes labels, uncertainty, or panel comparisons difficult to read, simplify the panel arrangement, move secondary material to the supplement when allowed, or revise the page layout before accepting a smaller figure.

## Placement in the paper

Introduce and discuss every figure in the prose. Never allow a figure to be the final rendered element of a section or the paper. Place at least one substantive paragraph after the figure and before the next heading or document end; use that paragraph to interpret the result, state its implication, or bound the conclusion rather than merely announce the next section.

Check the rendered output because LaTeX float behavior can separate a figure from its source position. If a figure dangles at an ending, move its callout or environment earlier, or use placement controls permitted by the target venue, then render again. Do not solve the problem by forcing a float into a location that creates large gaps, breaks reading order, or violates venue instructions.

## Critique

1. Does the figure answer one stated question?
2. Can the reader identify product, variable, units, domain, period/lead time, and aggregation?
3. Are uncertainty and sample support visible?
4. Does color remain interpretable for color-vision deficiencies and grayscale printing?
5. Are maps projected and weighted appropriately?
6. Is the caption self-contained: panel encoding, products, variables, units, domain, period/lead time, reference, sampling, uncertainty, and principal comparison?
7. Is all text legible at final publication size?
8. In the rendered paper, does a substantive interpretive paragraph follow the figure before the next heading or document end?
9. Does the figure use the largest compliant footprint, or is any reduction justified by a verified page or layout requirement?
