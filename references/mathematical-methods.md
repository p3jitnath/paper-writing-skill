# Mathematical methods and computational claims

Use when the requested work includes mathematics, a derivation, a theoretical result, an algorithm, or a computational claim. A local language edit does not authorise changing the definition or running a new experiment.

## Objects, assumptions, and consequences

Name the mathematical object and why it is needed before adding notation. Connect each expression to its assumptions and the consequence used in the argument. Preserve index sets, ranges, units, normalisation, sign and branch conventions, domain restrictions, stabilisers, and boundary cases. Extra equations are useful only when they expose an actual operation or relationship.

Keep a population objective, its finite-sample estimator, and its numerical approximation distinct. If all are shown, explain their relationship. A proof of validity, conservation, identifiability, or invariance establishes its stated property under its assumptions; it does not establish empirical accuracy, calibration, robustness, or deployment usefulness. An observed gain also does not prove a universal theorem.

When implementation affects meaning, compare the expression with the code path or protocol used for the reported result, including parameterisation, weighting, interpolation, and numerical approximation. Do not substitute a cleaner textbook algorithm for the implemented method. If evidence is absent, identify the unresolved correspondence.

## Algebraic edits

Check exact equivalence before calling a rewrite equivalent. Use symbolic reasoning and relevant boundary cases; numerical examples can expose an error but typical-case agreement alone is not a proof.

For example, with positive `epsilon`, the constructed expression

```text
a(B - A) / (|B| + |A| + epsilon)
```

is exactly

```text
(a/2)(B - A) / ((|B| + |A|)/2 + epsilon/2).
```

Keeping an unscaled `epsilon` in the second denominator changes the function. More generally, for nonzero `c` and a defined original denominator, `p/(q + epsilon) = (p/c)/(q/c + epsilon/c)`. Consider small-scale and zero-scale cases when testing a proposed normalisation.

Explain whether a constant is a mathematical requirement, numerical safeguard, engineering setting, precedent, or value supported by sensitivity analysis. Do not invent an optimality argument for a fixed choice or transfer another method's rationale without support.

## Computational evidence

Distinguish operation counts, asymptotic complexity, storage, measured peak memory, runtime, and end-to-end cost. State what is included and which quantity was actually derived or measured.

For `n` objects, a direct ordered-pair sum including the diagonal has `n^2` terms; a symmetric off-diagonal sum has `n(n-1)/2` unique pairs. Reducing to `m` objects changes these to `m^2` or `m(m-1)/2`, respectively. State the convention and relevant overhead, such as constructing representatives, sorting, indexing, or approximation. A smaller term count alone does not measure a runtime speedup or memory reduction.

Measured comparisons need the relevant implementation, hardware, precision, batch sizes, data movement, setup, and system boundary. Fewer iterations can coexist with slower runtime or greater memory per iteration. Preserve supported trade-offs and distinguish theoretical scaling from a measured operating regime.

## Proportionate verification

For an editorial rewrite, check changed notation and equivalence against the source. For a scientific revision, inspect the relevant assumptions, proof steps, or implementation correspondence. Report what was established and what remains unverified without presenting an unrun experiment as a completed check.
