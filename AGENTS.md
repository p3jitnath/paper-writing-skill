# Repository Guidance

This repository contains a Codex skill for AI weather and climate paper writing. It is a Markdown resource bundle, not an application.

## Source of truth

- `SKILL.md` controls triggering, routing, and workflow.
- `references/scientific_rigor.md` controls scientific validity checks.
- `references/paper_genres.md` controls genre-specific architecture; do not collapse all papers into IMRaD.
- `references/corpus_style.md` records robust house-style patterns from the twenty-paper audit corpus above optional author overlays.
- `author_profile/` contains the base voice plus Düben, Hartmann, and Emanuel overlays.
- `section_rhetorical_moves/` and `writing_checklists/` must remain aligned.
- `setup.sh` defines the installed resource set.

## Editing rules

- Keep `SKILL.md` a concise task router; put substantial conditional workflows in linked references. Preserve scientific and house-style requirements while keeping their scope explicit.
- Do not state current venue limits or policies from memory; direct the runtime agent to verify them.
- Do not use completed numerical claims in illustrative examples unless they are sourced and labeled.
- Keep observations, analyses, reanalyses, simulations, and forecasts distinct.
- Use `author_papershortname_year` keys in every `.bib` file, with deterministic year-letter suffixes for collisions, and update all citation commands when keys change.
- Require a nonempty, verified `url` field in every bibliography entry; a `doi` field alone is insufficient.
- Preserve calibrated uncertainty language; do not reinstate a blanket ban on hedging or passive voice.
- Validate changed skill frontmatter and reference paths, and run `git diff --check`. For installer or resource-layout changes, also run `bash -n setup.sh` and an isolated installer test. These local checks use temporary fixtures and can run without repeated approval. Rerun affected checks after fixes; broader testing needs a concrete reason.
