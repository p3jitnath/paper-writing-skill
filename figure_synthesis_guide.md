# Scientific figure selection and integration

## Start with the scientific question

Identify the visual's job: explain a construction, compare estimates, show a distribution, present a case, or give system context. Choose the figure because it answers a reader question. Record relevant data, units, population, coordinates, aggregation, reference, uncertainty, and takeaway in an existing figure specification when useful; a local correction does not require a new `figure_spec.md`.

“Publication quality” calls for clearer scientific explanation, hierarchy, spacing, and final-size legibility. Resolve genre, immutable content, typography, dimensions, and permitted redesign from current context. Keep the established Nature-style profile when it is the project's choice. A mathematical schematic can explain a construction; accuracy, calibration, or physical fidelity requires evidence.

## Representation and fidelity

Preserve data, topology, labels, equations, scales, category order, and meanings during styling work. If the original explanation is preferred, refine its presentation. Supply requested alternatives as separately named previews, including the current version for comparison, rather than replacing the accepted asset automatically.

Use a table when exact values are the main message; use a plot when shape, ordering, density, trend, or uncertainty geometry aids interpretation. An authorised conversion requires consistent values, captions, object references, and discussion. Distinguish an illustrated subset from the population used to compute an accompanying metric.

For mathematical diagrams, trace the same objects through stages with stable notation, addresses, and encodings. Label arrows by their actual relation when ambiguous. Check relevant invariants such as normalisation, conservation, dimensions, or connectivity. Synthetic examples need to satisfy the illustrated property and be identified as schematic. Equations should explain visible operations.

Keep histogram, empirical-distribution, weighted-sample, and continuous-density representations distinct. Define the random quantity, weights, normalisation, binning, or smoothing. A scalar diagnostic or association with a proxy does not establish the full distribution or calibration.

Use reproducible scripts for data figures and editable source for diagrams. An available `graph-plotting` skill supplies detailed plot, schematic, and final-size checks. Without it, these principles remain sufficient to complete a scoped manuscript edit.

## Conditional weather and climate archetypes

| Archetype | Use | Relevant checks |
|---|---|---|
| Geospatial map | Location and spatial structure | Projection, extent, colour scale, masks, area weighting |
| Vertical section / profile | Atmospheric or ocean structure | Vertical coordinate, orientation, units, terrain/mask |
| Hovmöller / time–distance | Propagation and evolution | Axis direction, averaging band, calendar convention |
| Lead-time skill curve | Forecast degradation | Reference, uncertainty, sample consistency |
| Reliability / rank diagnostic | Probabilistic quality | Bin counts, sample support, calibration reference |
| Spectrum / scale diagnostic | Variability across scales | Transform, normalisation, sampling, resolved scales |
| Extreme-value figure | Tails and hazards | Threshold, return period, dependence, uncertainty |
| Composite / anomaly | Regime or event structure | Baseline, event definition, sample count, uncertainty |
| Budget / mechanism | Physical explanation | Terms, sign convention, closure residual, units |

Conceptual figures may explain coupling, forecast or assimilation workflows, physical–ML interfaces, scale relationships, or data/split lineage. Use the relevant `figure_templates/` resource only when it helps the requested design. Check every scientific label, relation, and coordinate in any generated artwork.

## Size, placement, and delivery

Generate at the intended physical dimensions where possible and preserve aspect ratio during resizing. Diagnose unused source canvas, uneven panel allocation, inclusion scale, and surrounding document spacing separately. Preserve explicit caption gaps and protected wording. Size the figure to make its content readable, not to fill the largest possible area.

Introduce and interpret each figure near its callout and inspect the actual float placement. Keep the caption associated with the correct asset and preserve reading order. Placement depends on venue and document structure; it does not require every figure to be followed by a fixed number of paragraphs.

Verify numerical or mathematical fidelity separately from visual clarity. Inspect exported and integrated figures for labels, scales, uncertainty, glyph collisions, contrast, line weights, and effective text size, including subscripts and symbols. A stroke can obscure text even if bounding boxes pass. Keep source, accepted exports, and requested variants distinct, and report material dependencies and the checks actually completed.
