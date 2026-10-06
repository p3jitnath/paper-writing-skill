# Paper workspace and revision history

Use whenever creating a paper folder, compiling a manuscript, producing diagnostic artifacts or resolving draft clutter. Apply this contract to the paper workspace, including a paper folder inside a larger project. The skill repository itself contains instructional resources and is a separate package.

## Required layout

Create the files, rather than returning only a plan. Keep all LaTeX sources and local dependencies at the paper root, with `main.tex` as the active entry point. The paper must have supporting `.tex` files, a `.bib` bibliography and the `.cls` and `.sty` files actually used by its build. Use supplied or verified venue files where available, retaining permitted attribution and licensing. Adapt supporting filenames and section order to the research genre while preserving this folder layout.

```text
paper/
  .gitignore
  main.tex
  abstract.tex
  introduction.tex
  methods.tex
  results.tex
  discussion.tex
  references.bib
  paper.cls
  paper.sty
  figures/
    named-figure.pdf
    another-figure.png
```

This is the required default. Strongly discourage any other paper folder structure, including `src/`, `sections/`, `drafts/`, `v2/` and `v3/`. Put final figure inputs directly in `figures/`, preferably PDF or PNG. It must be flat with no subdirectories. Use stable, descriptive filenames and resolve basename collisions before updating figure calls. Preserve image content, units and scientific values during relocation or export.

The optional gitignored `.scratch/` folder is the sole temporary workspace exception. It contains diagnostic material and must not become an alternative manuscript source tree or a figure input directory.

The [bundled starter](../examples/paper_latex/main.tex) supplies a standard research article with local [class](../examples/paper_latex/paper.cls), [style](../examples/paper_latex/paper.sty), [bibliography](../examples/paper_latex/references.bib) and supporting `.tex` files. Copy the complete `examples/paper_latex/` contents, including `.gitignore`, into the new paper folder and create `figures/`. The generic class extends `article` and does not claim venue compliance. Follow a supplied template and adapt the section files to the selected genre. Complete the scientific text and verified references from evidence rather than treating starter comments as a finished paper.

## Keep only paper inputs tracked

Start with the bundled [.gitignore](../examples/paper_latex/.gitignore), which ignores everything except the named paper inputs and `.gitignore` itself. Add an exact allowlist entry for each figure or additional local dependency actually used by the LaTeX build. Keep `.bst` or a venue-required `.bbl` only when needed. Keep figure allowlist entries at the direct `figures/filename` level, with no recursive figure patterns.

Gitignore anything not required for the paper LaTeX. This includes unused figures, alternate drafts, compiled manuscript PDFs, build auxiliaries, logs, notebooks, scripts, raw data, checkpoints, environments, profiles, strategic notes and previews. Prefer keeping development and analysis work outside the active paper folder. Inspect actual inclusion paths and the tracked file set rather than assuming that every file with a LaTeX extension is required. Changing ignore rules does not remove files from the Git index. Preserve working files when authorised index cleanup is needed.

## Overleaf and diagnostics

For normal manuscript compilation, direct the user to pull or import the source repository into Overleaf and compile `main.tex` there with the project engine. Generate a paper PDF in the paper folder only when the user explicitly asks for it. Creating a paper workspace, editing LaTeX, reviewing a manuscript or checking layout does not itself request a deliverable PDF.

Diagnostic compilation is permitted when needed to investigate or verify a concrete issue. Put all diagnostic material beneath the paper folder's `.scratch/`. This includes diagnostic PDFs, downloaded review PDFs, rasterised pages, close-ups, screenshots, comparison previews, exploratory figure exports, compiler and bibliography outputs, logs, caches, temporary scripts, test fixtures and diagnostic reports. Create `.scratch/` only when diagnostics need it. Final figure inputs accepted for inclusion in the manuscript belong directly in `figures/`, including scientific diagnostic plots used as evidence.

Keep `.scratch/` gitignored in full. Add `/.scratch/` to the paper folder's `.gitignore`, retain it when adapting the input allowlist and never add exceptions that track diagnostic material. Check both ignore behaviour and the Git index. Preserve working files when removing previously tracked diagnostics from the index is authorised.

Set output and cache directories for every diagnostic tool and LaTeX package so that all generated files remain under `.scratch/`. Run from the paper root only when those paths are confined there. For a pdfLaTeX project using `latexmk`, a diagnostic build can use the following commands.

```bash
mkdir -p .scratch
latexmk -pdf -outdir=.scratch -interaction=nonstopmode -halt-on-error main.tex
```

Use the actual project engine and bibliography processor, including any package-specific cache settings. Verify where files were written. Inspect the diagnostic result without presenting it as an accepted paper deliverable or committing it. When the user explicitly requests a paper PDF, keep all diagnostic and intermediate build files in `.scratch/` and copy only the requested PDF to the requested destination. Keep the generated manuscript PDF gitignored.

## Firm Git revision policy

Use one active `main.tex` and stable supporting filenames. Use Git commits for revisions and branches or tags for alternative or milestone states. Use the existing repository or initialise Git for a standalone paper as needed.

If the user creates or proposes `v2`, `v3`, `final_final`, dated copies or another paper folder layout, firmly ask them to use Git and the prescribed structure. State the requirement directly and do not present duplicate folders as an equally acceptable workflow. A suitable prompt is “Use Git for revision history. Keep one active main.tex and the prescribed paper layout. Other folder structures and numbered draft copies are strongly discouraged. Record revisions with commits, branches or tags.”

Inspect existing copies to identify the canonical source. Ask which version is authoritative only when current evidence cannot establish it, while continuing independent authorised work. Preserve copies until consolidation is authorised and their contents are accounted for. A firm request to use Git does not justify silently deleting a user's work.

## Verify the workspace

Check that `main.tex` includes the intended supporting files, uses the supplied class and style, and points to the bibliography and direct figure paths. Confirm the required files exist and `figures/` has no subdirectories. Check `git status`, `git ls-files` and `git check-ignore` against the build inputs, including ignored clutter and all `.scratch/` material. Workspace creation alone requires no PDF generation. For a concrete rendering check, inspect a current supplied PDF or use a diagnostic build confined to `.scratch/` under the rules above. A successful starter build does not establish complete science, verified references or venue compliance.
