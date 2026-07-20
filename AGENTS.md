# Repository Guidance

This repository contains a Codex skill for AI weather and climate paper writing. It is a Markdown resource bundle, not an application.

## Source of truth

- `SKILL.md` controls triggering, routing, and workflow.
- `references/scientific_rigor.md` controls scientific validity checks.
- `references/paper_genres.md` controls genre-specific architecture; do not collapse all papers into IMRaD.
- `references/corpus_style.md` records robust house-style patterns from the twenty-paper audit corpus above optional author overlays.
- `author_profile/` contains the base voice plus Düben, Hartmann, and Emanuel overlays.
- `section_rhetorical_moves/` and `writing_checklists/` must remain aligned.
- `setup` defines the installed resource set.

## Editing rules

- Keep `SKILL.md` under 500 lines and move detailed domain guidance into references.
- Do not state current venue limits or policies from memory; direct the runtime agent to verify them.
- Do not use completed numerical claims in illustrative examples unless they are sourced and labeled.
- Keep observations, analyses, reanalyses, simulations, and forecasts distinct.
- Preserve calibrated uncertainty language; do not reinstate a blanket ban on hedging or passive voice.
- After changes, run the skill validator, `bash -n setup`, an isolated installer test, reference checks, and `git diff --check`.
