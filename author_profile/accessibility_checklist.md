# Accessibility & Coherence Checklist (G1–G6)

> The semantic failures a grep cannot catch. Run after the de-AI mechanical gate, as part of the
> Mandatory Style Audit, and again in the independent red-team (`red_team_protocol.md`). These are what
> reviewers actually reject on. Added 2026-07 from a live-review audit (see the paper's
> `notes/PAPER_WRITING_SKILL_GAPS.md`).

## G1 — Accessibility: define before use
Every domain term, artifact, acronym, or coined construct is defined in plain language at first use,
BEFORE it appears in an argument. A first-time reader in the venue must be able to follow.
- Fail: "Result×Experiment matrix" used as if the reader already knows it.
- Check: for each CamelCase / ×-joined / capitalized construct, is there an upstream "is / means / defined as"?
- Aid: `grep -rnoE "[A-Z][a-zA-Z]+×[A-Z][a-zA-Z]+|\b[A-Z][a-z]+[A-Z][a-zA-Z]+\b" sections/*.tex` — for each, confirm a definition precedes its first argumentative use.

## G2 — Thesis-tie + no new threads
Every paragraph's claim ladders to the paper's ONE controlling idea, stated in FIXED vocabulary.
- Fail: introducing a standalone value ("the substrate-capability gap as a machine-checkable spec") late, not tied to the thesis.
- Check: name the controlling idea (from `project_context.md`). For each claim, draw the line to it. Does any paragraph open a NEW thread? Is the thesis re-phrased each time instead of reinforced in fixed words?

## G3 — Term-introduction order
In a concept chain (e.g. abstraction → grammar → DSL), each term is introduced/connected before it is leaned on.
- Fail: "pre-specified DSL" appears before "DSL" is introduced.
- Check: list coined terms by first appearance; each must be defined at or before that point.

## G4 — Directness: deliver the noun
A paragraph whose topic sentence promises to define/explain X must STATE X, not orbit it.
- Fail: "the abstraction does X and does Y" without ever saying what the abstraction IS.
- Check: for each "what is X" paragraph, underline the one sentence that states X. If none, rewrite.

## G5 — Cross-section non-duplication
A result, number, or argument appears ONCE, in its home section.
- Fail: per-system coverage numbers in both §2 and §4.
- Check: for each quantitative result, is it claimed in more than one section? Keep it home; cross-reference elsewhere.

## G6 — Requirement ↔ closure
Every requirement stated in motivation/background has an explicit closure (which design choice satisfies it) in the design section.
- Check: build the requirement → design-choice table; every requirement row has a design answer.

## Severity
G1, G3, G4 = MAJOR (reviewer-visible confusion). G2, G5, G6 = CRITICAL (structural / logical incoherence).
