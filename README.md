# AI Weather and Climate Paper-Writing Skill

A Codex skill for planning, drafting, reviewing, and revising research papers at the intersection of artificial intelligence and weather or climate modeling.

The skill covers weather forecasting and nowcasting, Earth-system emulation, climate downscaling and projections, data assimilation, extremes and hazards, hybrid physics–ML methods, and AI-assisted scientific understanding. It preserves rigorous scientific distinctions that generic writing assistants often blur: observations versus reanalyses, prediction versus mechanism, deterministic accuracy versus calibration, interpolation versus extrapolation, and computational speed versus operational readiness.

## Install

```bash
git clone https://github.com/p3jitnath/paper-writing-skill.git
cd paper-writing-skill
./setup
```

The installer copies the skill to `${CODEX_HOME:-~/.codex}/skills/paper-writing/`. Start a new Codex session in a paper directory and ask Codex to use `$paper-writing`.

## What It Does

- Builds a `project_context.md` evidence contract before drafting.
- Routes the paper by scientific task and publication culture.
- Routes benchmark, flagship-result, model-development, calibration, intercomparison, review, theory/mechanism, foundation-model, and standard research papers separately.
- Audits temporal and spatial leakage, product provenance, baseline fairness, physical consistency, uncertainty, and reproducibility.
- Standardizes BibTeX keys as `author_papershortname_year` (for example, `nath_replacing_2026`).
- Supports Earth-science-journal and ML-conference structures.
- Uses one of three scientific prose profiles:
  - Peter Düben for Earth-system modeling and operational AI forecasting.
  - Dennis Hartmann for climate dynamics, feedbacks, and physical interpretation.
  - Kerry Emanuel for tropical convection and tropical cyclones.
- Guides weather/climate maps, vertical sections, Hovmöller diagrams, lead-time skill, reliability, spectra, extremes, budgets, and conceptual model figures.
- Uses robust house-style patterns identified through a twenty-paper weather/climate audit corpus, with named voice profiles applied only as optional overlays.

## Typical Requests

- “Use `$paper-writing` to design the verification plan for this global ML forecast paper.”
- “Audit these train/test years for temporal and reanalysis leakage.”
- “Rewrite this climate-feedback discussion in the Hartmann profile.”
- “Review whether our tropical-cyclone feature attribution supports a mechanism claim.”
- “Turn these results into an AIES paper outline.”
- “Adapt this Earth-science journal draft for an ML conference without losing the physical evidence.”

## Workflow

1. **Scientific framing:** Define the claim, falsifier, task family, domain, scales, and evidence boundary.
2. **Architecture:** Choose the paper genre and venue track, then build genre-appropriate evidence, figure, and section plans.
3. **Data and methods:** Document product identity, splits, leakage controls, model, baselines, metrics, and reproducibility.
4. **Results and discussion:** Verify skill, calibration, physical behavior, regimes, extremes, mechanisms, uncertainty, and limitations.
5. **Final framing:** Rewrite the introduction after the evidence stabilizes, then write the abstract and compress.

## Scientific Defaults

The skill expects named and versioned products, exact temporal/spatial splits, reference hierarchies, dependence-aware uncertainty, and disaggregated verification. It separates offline component accuracy from coupled prognostic behavior, treats feature importance and saliency as associations unless physical evidence supports mechanism, and distinguishes parameter uncertainty from structural model discrepancy.

## Repository Layout

```text
SKILL.md                       Core routing and workflow
brainstorming_guide.md         Project-context interview
references/scientific_rigor.md Scientific validity gates
references/paper_genres.md     Genre-specific architectures
references/corpus_style.md     Twenty-paper calibrated house style
references/front_matter.md     Abstract, Key Points, PLS, availability
author_profile/                Base prose and three voice overlays
section_rhetorical_moves/      Introduction, methods, results, discussion, related work
writing_checklists/            Section-level audits
figure_synthesis_guide.md      Scientific and conceptual figure guidance
figure_templates/              Specs, styles, prompts, and TikZ
examples/                      Template plus three domain examples
```

## Voice Profiles

The profiles encode recurring reasoning and exposition patterns, not phrases to copy. Scientific truth and the paper's evidence always override stylistic preference. Select a profile explicitly in `project_context.md` or allow task routing to choose the default.

## Customize

- Edit `author_profile/voice_profile.md` for group-wide prose conventions.
- Extend `references/scientific_rigor.md` with project- or subfield-specific diagnostics.
- Add venue conventions only after checking the current author instructions.
- Keep strategic `project_context.md` files untracked unless the research team explicitly wants them shared.

## Validate

```bash
python3 /path/to/skill-creator/scripts/quick_validate.py .
bash -n setup
```

## License

MIT
