# Paper workspace and revision history

Use whenever creating a paper folder, compiling a manuscript, producing diagnostic artifacts or resolving draft clutter. Apply this contract to the paper workspace, including a paper folder inside a larger project. The skill repository itself contains instructional resources and is a separate package.

## Required layout

Create the files, rather than returning only a plan. Keep all active LaTeX sources and local dependencies at the paper root, with `main.tex` as the entry point. Name supporting `.tex` files using the `s0x_abc.tex` convention, with a two-digit sequence in reading order and a descriptive lowercase topic separated by underscores, such as `s01_abstract.tex` and `s02_introduction.tex`. Continue with `s10_...` when more than nine supporting files are needed. Apply the same convention to appendix and other included manuscript sources. The paper must have a `.bib` bibliography and the `.cls` and `.sty` files actually used by its build. Use supplied or verified venue files where available, retaining permitted attribution and licensing. Adapt topics and section order to the research genre while preserving this naming convention and folder layout.

```text
paper/
  .gitignore
  main.tex
  s01_abstract.tex
  s02_introduction.tex
  s03_methods.tex
  s04_results.tex
  s05_discussion.tex
  references.bib
  paper.cls
  paper.sty
  figures/
    forecast-error.pdf
    regional-skill-map.png
  .scratch/                 Hidden and gitignored, created when needed
```

This is the required default. Explain the layout and use of Git for revisions diplomatically when a user proposes another structure, including `src/`, `sections/`, `drafts/`, `v2/` or `v3/`. Put final figure inputs directly in `figures/`, preferably PDF or PNG. It must be flat with no subdirectories. Always use exactly two or three descriptive words in a paper figure filename stem, joined with hyphens before the extension. Preserve the same stem across export formats. Resolve collisions within that word count and update all inclusion paths, build references and exact Git allowlist entries when renaming. Preserve image content, units and scientific values during relocation or export.

Apart from `.gitignore` and Git metadata, the only visible root contents are the actual paper build inputs and the flat `figures/` folder. Put all other material inside the hidden, gitignored `.scratch/` folder, including planning records, notes, code, raw data, unused assets, archived drafts and generated output. Create it when such material is needed. Active manuscript inputs and final included figures must stay in their prescribed root and `figures/` locations.

When creating or explicitly reorganising a paper, update every `\input`, `\include`, build reference and exact Git allowlist entry together with a supporting-file rename. Preserve contents, inclusion order, displayed text and layout. A local proofreading or label-only task does not rename existing files or move unrelated material. Preserve venue-mandated filenames when required by the supplied template and report that exception.

The [bundled starter](../examples/paper_latex/main.tex) supplies a standard research article with local [class](../examples/paper_latex/paper.cls), [style](../examples/paper_latex/paper.sty), [bibliography](../examples/paper_latex/references.bib) and supporting `.tex` files. Copy the complete `examples/paper_latex/` contents, including `.gitignore`, into the new paper folder and create `figures/`. The generic class extends `article` and does not claim venue compliance. Follow a supplied template and adapt the section files to the selected genre. Complete the scientific text and verified references from evidence rather than treating starter comments as a finished paper.

The starter includes the required alphabetical footnote and yellow `\todo` definitions and loads `xcolor` and `soul` through `paper.sty`. When preparing another manuscript or template, include [the same required preamble](latex_manuscript_editing.md#required-paper-preamble) when preamble changes are in scope. Preserve existing definitions during label-only corrections.

## Keep only paper inputs tracked

Start with the bundled [.gitignore](../examples/paper_latex/.gitignore), which ignores everything except the named paper inputs and `.gitignore` itself. Add an exact allowlist entry for each figure or additional local dependency actually used by the LaTeX build. Keep `.bst` or a venue-required `.bbl` only when needed. Keep figure allowlist entries at the direct `figures/filename` level, with no recursive figure patterns.

Store and gitignore everything not required for the paper LaTeX inside `.scratch/`. This includes unused figures, archived drafts, compiled manuscript PDFs, build auxiliaries, logs, notebooks, scripts, raw data, checkpoints, environments, profiles, strategic notes and previews. New project context records belong at `.scratch/project_context.md` and new audit ledgers at `.scratch/notes/AUDIT_LEDGER.md`. Inspect actual inclusion paths and the tracked file set rather than assuming that every file with a LaTeX extension is required. Changing ignore rules does not move files or remove them from the Git index. During authorised workspace consolidation, relocate non-build material into `.scratch/`, update dependent paths and preserve working files when cleaning the index.

## Overleaf and diagnostics

For normal manuscript compilation, direct the user to pull or import the source repository into Overleaf and compile `main.tex` there with the project engine. Generate a paper PDF in the paper folder only when the user explicitly asks for it. Creating a paper workspace, editing LaTeX, reviewing a manuscript or checking layout does not itself request a deliverable PDF.

Diagnostic compilation is permitted when needed to investigate or verify a concrete issue. Put all diagnostic material beneath the paper folder's `.scratch/`. This includes diagnostic PDFs, downloaded review PDFs, rasterised pages, close-ups, screenshots, comparison previews, exploratory figure exports, compiler and bibliography outputs, logs, caches, temporary scripts, test fixtures and diagnostic reports. Reuse the same hidden folder used for other non-build work. Final figure inputs accepted for inclusion in the manuscript belong directly in `figures/`, including scientific diagnostic plots used as evidence.

Keep `.scratch/` gitignored in full. Add `/.scratch/` to the paper folder's `.gitignore`, retain it when adapting the input allowlist and never add exceptions that track diagnostic material. Check both ignore behaviour and the Git index. Preserve working files when removing previously tracked diagnostics from the index is authorised.

Set output and cache directories for every diagnostic tool and LaTeX package so that all generated files remain under `.scratch/`. Run from the paper root only when those paths are confined there. For a pdfLaTeX project using `latexmk`, a diagnostic build can use the following commands.

```bash
mkdir -p .scratch
latexmk -pdf -outdir=.scratch -interaction=nonstopmode -halt-on-error main.tex
```

Use the actual project engine and bibliography processor, including any package-specific cache settings. Verify where files were written. Inspect the diagnostic result without presenting it as an accepted paper deliverable or committing it. When the user explicitly requests a paper PDF, keep it and all intermediate build files in `.scratch/` unless the user specifies another delivery destination. Keep the generated manuscript PDF gitignored.

## Git revision policy

Use one active `main.tex` and stable supporting filenames. Use Git commits for revisions and branches or tags for alternative or milestone states. Use the existing repository or initialise Git for a standalone paper as needed.

If the user creates or proposes `v2`, `v3`, `final_final`, dated copies or another paper folder layout, explain the prescribed structure and Git revision policy diplomatically. A suitable explanation is “Keeping one active main.tex and recording revisions with Git commits, branches or tags would help preserve the required paper layout and make the changes easier to trace.” Keep the layout requirement clear and preserve existing work.

Inspect existing copies to identify the canonical source. Ask which version is authoritative only when current evidence cannot establish it, while continuing independent authorised work. Preserve copies until consolidation is authorised and their contents are accounted for. Explaining the Git revision policy does not justify silently deleting a user's work.

## Verify the workspace

Check that `main.tex` includes the intended supporting files, uses the supplied class and style, and points to the bibliography and direct figure paths. Confirm supporting filenames follow the numbered topic convention and all renamed-file references resolve. Verify that only build inputs and `figures/` remain visible at the root and that all non-build material is inside gitignored `.scratch/`. Confirm `figures/` has no subdirectories and every paper figure filename stem has exactly two or three descriptive words. Check `git status`, `git ls-files` and `git check-ignore` against the build inputs and all `.scratch/` material. Workspace creation alone requires no PDF generation. For a concrete rendering check, inspect a current supplied PDF or use a diagnostic build confined to `.scratch/` under the rules above. After supporting-file renames, compare the before and after output for unchanged displayed text, numbering and pagination. A successful starter build does not establish complete science, verified references or venue compliance.
