# Independent Scientific Red-Team Protocol

Use for a requested scientific review or a material change to claims, evidence, or interpretation. Review the affected scientific dependencies; a wording-only correction does not need this protocol.

## Review order

1. **Claim validity:** Identify the strongest sentence and the exact evidence required to support it.
2. **Data integrity:** Verify product identities, versions, roles, units, periods, grids, and split boundaries.
3. **Leakage and fairness:** Inspect preprocessing, dependent samples, shared products, and baseline matching.
4. **Verification:** Check reference forecasts, metrics, aggregation, uncertainty, disaggregation, extremes, and end-to-end cascade behavior.
5. **Physical reasoning:** Separate association from mechanism and test alternative explanations.
6. **Scope:** Check transfer, extrapolation, operational, and societal claims against evaluated conditions.
   Verify that all conditioning inputs exist at issuance time and that image-quality metrics are not standing in for meteorological or probabilistic skill.
7. **Reproducibility:** Check code, data, weights, environment, compute, postprocessing, and plotting artifacts.
8. **Communication:** Apply the selected voice, accessibility, terminology, and mechanical prose checks.

## Findings format

| Severity | Location | Claim at risk | Evidence | Required repair |
|---|---|---|---|---|

Use `CRITICAL` for leakage, contradictory product identity, invalid comparisons, unsupported causal claims, or evidence that reverses the conclusion. Use `MAJOR` for missing uncertainty, disaggregation, physical support, or reproducibility details. Use `MINOR` for clarity and presentation.

Review with a fresh-reader lens. If a separate reviewer is available and authorized, give it only the paper context, changed text, and checklists—not the author's self-assessment. Otherwise perform a clearly separated second pass and disclose that it was not independent.

Recheck affected findings after substantive fixes. Continue until the in-scope issues are resolved or require unavailable evidence; record those issues and complete independent work. A clean audit requires evidence for the checks actually performed. Report findings with locations, and do not expand a finished review without a new concern.
