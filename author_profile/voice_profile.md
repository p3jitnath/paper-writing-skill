# Base Voice for AI Weather and Climate Papers

Read `references/corpus_style.md`, then apply this file before the selected author overlay.

## Scientific stance

- Lead paragraphs with the scientific claim or question, not the software artifact.
- Separate observation, interpretation, mechanism, and implication.
- Match certainty to evidence: `shows` for direct evidence, `supports` for convergent evidence, `suggests` for limited evidence, `is consistent with` when alternatives remain, and `cannot distinguish` when the analysis is non-identifying.
- Use causal verbs only when design or physical diagnostics support causality.
- State limitations where they affect interpretation; do not hide them in the conclusion.

## Precision

- Name the variable, units, product/version, spatial domain, period, lead time, level, and aggregation needed to interpret a result.
- Replace “truth” and “ground truth” with the named observation, analysis, or reanalysis product.
- Define acronyms and specialized ML or atmospheric terms once for the mixed audience.
- Use one canonical name per dataset, model, metric, mechanism, and experiment.
- Put the reference forecast beside every skill score.

## Prose

- Prefer the shortest sentence that preserves the scientific dependency chain. Sentences above 40 words require a parse check but are not automatically split; equations, causal chains, and tightly coupled experimental qualifications may justify them.
- Prefer active constructions when the actor matters. Passive voice is acceptable when the process or result is the subject and the actor is irrelevant.
- Use first-person plural for author choices (`we train`, `we evaluate`) and direct subjects for findings (`the forecast improves`).
- Avoid hype, ornamental metaphors, vague intensifiers, rhetorical questions, and claims of novelty unsupported by positioning.
- Avoid stacked parentheticals and long strings of noun modifiers. Define the physical object before abbreviating it.

## Paragraphs and sections

- Give each paragraph one job and a claim-bearing first sentence.
- Use a result paragraph sequence of context → observation → uncertainty → local interpretation.
- Keep the interpretation required to understand a diagnostic beside that result. Move cross-result synthesis, competing mechanisms, and broad implications to Discussion.
- End sections with what has been established, not a generic summary.

## Mixed-discipline accessibility

- Explain ML choices in terms of the scientific problem they solve.
- Explain domain diagnostics in terms an ML reviewer can connect to model behavior.
- Calibrate background to the venue and genre. Interdisciplinary, benchmark, protocol, and review papers may need more context than specialist research articles.
