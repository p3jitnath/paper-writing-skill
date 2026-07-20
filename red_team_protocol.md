# Independent Scientific Red-Team Protocol

Run after drafting or materially revising a section.

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

Repeat after substantive fixes until no critical or major finding remains. Never report a clean audit without the findings table and the checks actually performed.
