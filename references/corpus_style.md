# Corpus-Derived House Style

This house style summarizes robust recurring patterns identified through the twenty-paper reference corpus in `references/corpus_sources.md`. Papers that primarily expose audit risks are not treated as prose exemplars. Apply the house style before an optional Düben, Hartmann, or Emanuel overlay.

## Argument

- Begin with a specific scientific capability, phenomenon, or community bottleneck.
- Move from limitation to the organizing idea, then structure the body around questions, capabilities, experiments, or mechanisms.
- Treat named models as important objects when the paper contributes a model; do not artificially hide the model name after the gap is established.
- State resource, protocol, calibration, and synthesis contributions in their natural form instead of rewriting all contributions as performance findings.
- Put interpretation next to the result it explains. Use Discussion for synthesis, competing explanations, limitations, and broader consequences.
- For a theory paper, state the prevailing picture, identify the inconsistency or missing constraint, introduce the alternative, and demonstrate its consequences across progressively broader cases.
- For a systems-history review, organize cumulative progress around interacting scientific and technological pillars, support the trajectory with consistent long-term evidence, and let the historical synthesis motivate a dependency-aware future roadmap.

## Evidence

- Name data products, reference models, periods, grids, lead times, variables, and metrics at the point of comparison.
- Present favorable results with the important exception, degraded regime, or comparison asymmetry nearby.
- Distinguish offline, one-step, coupled, prognostic, and long-rollout evidence.
- For emulators, move from aggregate climate and stability to process variability, forced response, and known failure cases. Keep fidelity to a source model distinct from agreement with observations.
- Compare errors with a physically meaningful noise floor, such as differences among identically forced initial-condition members, when internal variability limits pointwise agreement.
- Use case studies to show phenomena and failure modes after aggregate verification, not as substitutes for it.
- When moving from climate variables to impacts, make every link explicit: physical driver, event distribution, exposure or asset model, response or loss function, and resulting risk. Emphasize the part of the distribution that controls the impact rather than relying on basin or global means.
- Cite factual, historical, methodological, and physical claims densely enough that readers can trace their origin.

## Prose

- Prefer direct scientific subjects and precise verbs. Allow passive voice when the experiment, dataset, or process should remain the subject.
- Permit longer technical sentences when they preserve a clear causal or mathematical chain; split only when dependencies become hard to follow.
- Use qualifications such as `however`, `although`, `suggests`, and `consistent with` to mark real evidence boundaries, not as decorative hedging.
- Define domain terms for ML readers and ML choices for domain readers, but allow more contextual explanation in interdisciplinary papers than a specialist venue would need.
- Keep conclusions bounded and specific; summarize what worked, what failed, and where transfer remains untested.
- Let equations carry compression only after the variables and physical intuition are established; state the physical consequence after a derivation.

## Figures and captions

- Use multi-panel figures to connect aggregate skill, spatial structure, process diagnostics, and exceptions.
- Write self-contained captions that explain panel encoding, products, variables, units, references, sampling, uncertainty, and the principal comparison.
- Keep interpretation in the prose even when the caption states the central visual result.
