# Paper workspace and revision history

Use whenever creating a paper folder, compiling a manuscript, producing diagnostic artifacts or resolving draft clutter. Apply this contract to the paper workspace, including a paper folder inside a larger project. The skill repository itself contains instructional resources and is a separate package.

## Required layout

Create the actual paper files. Keep exactly one manuscript entry point named `main.tex` at the paper root. When preparing replies to reviewers, create or update the single `review-response.tex` at the same root and reuse it across rounds. Keep active LaTeX sources and local dependencies at that root. Name supporting `.tex` files using the `s0x_abc.tex` convention, with a two-digit sequence in reading order and a descriptive lowercase topic separated by underscores, such as `s01_abstract.tex` and `s02_introduction.tex`. Continue with `s10_...` when more than nine supporting files are needed. Apply the same convention to appendix and other included manuscript sources. The paper must have a `.bib` bibliography and the `.cls` and `.sty` files actually used by its build. Use supplied or verified venue files where available, retaining permitted attribution and licensing. Adapt topics and section order to the research genre while preserving this naming convention and folder layout.

```text
paper/
  .gitignore
  main.tex
  review-response.tex       Created when preparing reviewer replies
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

Put final exported figure assets directly in `figures/`, preferably PDF or PNG. It must be flat with no subdirectories. Always use exactly two or three descriptive words in an exported figure asset filename stem, joined with hyphens before the extension. Preserve the same stem across export formats. Resolve collisions within that word count and update all inclusion paths, build references and exact Git allowlist entries when renaming. Preserve image content, units and scientific values during relocation or export.

Apart from `.gitignore` and Git metadata, the visible root contains the manuscript and any response build inputs and the flat `figures/` folder. Create hidden, gitignored `.scratch/` as needed for non-build material still in use, such as planning records, data, scripts and generated output. Keep retired drafts recoverable in Git history.

When creating or reorganising a paper, update every affected `\input`, `\include`, build reference and exact Git allowlist entry together with any rename. Preserve inclusion order, contents, displayed text and layout for a file-only move. Keep local proofreading and label corrections scoped to their requested edits. Apply venue-mandated alternate entry filenames in a submission copy under `.scratch/` while keeping the canonical roots at the paper root.

The [bundled starter](../examples/paper_latex/main.tex) supplies a standard research article with local [class](../examples/paper_latex/paper.cls), [style](../examples/paper_latex/paper.sty), [bibliography](../examples/paper_latex/references.bib) and supporting `.tex` files. Copy the complete `examples/paper_latex/` contents, including `.gitignore`, into the new paper folder and create `figures/`. The generic class extends `article` and does not claim venue compliance. Follow a supplied template and adapt the section files to the selected genre. Complete the scientific text and verified references from evidence rather than treating starter comments as a finished paper.

The starter includes the required alphabetical footnote and yellow `\todo` definitions and loads `xcolor` and `soul` through `paper.sty`. When preparing another manuscript or template, include [the same required preamble](latex_manuscript_editing.md#required-paper-preamble) when preamble changes are in scope. Preserve existing definitions during label-only corrections.

## Keep only paper inputs tracked

Start with the bundled [.gitignore](../examples/paper_latex/.gitignore), which ignores everything except the named paper inputs and `.gitignore` itself. Add an exact allowlist entry for each figure or additional local dependency used by the manuscript or response build. Keep `.bst` or a venue-required `.bbl` only when needed. Keep figure allowlist entries at the direct `figures/filename` level, with no recursive figure patterns.

Keep needed non-build files in gitignored `.scratch/`. New project context records belong at `.scratch/project_context.md` and new audit ledgers at `.scratch/notes/AUDIT_LEDGER.md`. During authorised consolidation, move non-build material still in use into `.scratch/`, update dependent paths and remove those paths from tracking while preserving their working copies. Remove confirmed stale files under the revision policy below.

## Overleaf and diagnostics

For normal manuscript compilation, direct the user to pull or import the source repository into Overleaf and compile `main.tex` there with the project engine. Generate a paper PDF in the paper folder only when the user explicitly asks for it. Creating a paper workspace, editing LaTeX, reviewing a manuscript or checking layout does not itself request a deliverable PDF.

Diagnostic compilation is permitted when needed to investigate or verify a concrete issue. Put all diagnostic material beneath the paper folder's `.scratch/`. This includes diagnostic PDFs, downloaded review PDFs, rasterised pages, close-ups, screenshots, comparison previews, exploratory figure exports, compiler and bibliography outputs, logs, caches, temporary scripts, test fixtures and diagnostic reports. Reuse the same hidden folder used for other non-build work. Final exported figure assets accepted for inclusion in the manuscript belong directly in `figures/`, including scientific diagnostic plots used as evidence.

Keep `.scratch/` gitignored in full. Add `/.scratch/` to the paper folder's `.gitignore`, retain it when adapting the input allowlist and never add exceptions that track diagnostic material. Check both ignore behaviour and the Git index. Preserve working files when removing previously tracked diagnostics from the index is authorised.

Set output and cache directories for every diagnostic tool and LaTeX package so that all generated files remain under `.scratch/`. Run from the paper root only when those paths are confined there. For a pdfLaTeX project using `latexmk`, a diagnostic build can use the following commands.

```bash
mkdir -p .scratch
latexmk -pdf -outdir=.scratch -interaction=nonstopmode -halt-on-error main.tex
```

Use the actual project engine and bibliography processor, including any package-specific cache settings. Verify where files were written. Inspect the diagnostic result without presenting it as an accepted paper deliverable or committing it. When the user explicitly requests a paper PDF, keep it and all intermediate build files in `.scratch/` unless the user specifies another delivery destination. Keep the generated manuscript PDF gitignored.

## Git revision policy

Use stable filenames for `main.tex`, `review-response.tex` and supporting sources. Store revisions in Git commits and use branches or tags for alternative or milestone states. Use the existing repository or initialise Git for a standalone paper as needed.

If you find competing manuscript or response drafts, including files or folders marked `v2`, `v3`, `final_final` or dated variants, state the one-root policy politely. Ask how to consolidate and wait for the user's decision unless they have already specified what to keep. Continue independent authorised work while waiting.

> I found several versions of the manuscript. I’ll maintain one `main.tex` and keep earlier versions in Git. Which draft should I use, and which changes from the other copies should I bring across?

Use these steps for authorised consolidation.

1. Inventory the paper folder, including tracked, modified, untracked and ignored candidates. Trace the active LaTeX inputs, assets and build paths for both roots where present. Compare draft contents and check how any apparently unused file is used before classifying it as stale.
2. Apply the user's decision and confirm that the content of retired source copies is recoverable from Git or has been incorporated in the retained sources. Check uncommitted and untracked work explicitly. Preserve unique work in an authorised Git checkpoint when needed, or obtain the user's direction on any material without a recovery path before deleting it.
3. Remove every confirmed stale file from the working tree and, for tracked files, from the Git index. Include retired draft copies, superseded assets and obsolete generated files within the authorised paper folder. Use explicit file paths and remove stale allowlist entries and build references. Retain needed inputs and active non-build work in their prescribed locations.

## Verify the workspace

Verify exactly one `main.tex`. Once a reply has been prepared, verify there is also exactly one `review-response.tex`. Confirm that both roots, where present, resolve their intended supporting files, bibliography, class and style, and figure paths. Check the numbered supporting names, flat `figures/` and two- or three-word figure filenames. Check the working tree, including ignored paths, for retired copies. Use `git status`, `git ls-files` and `git check-ignore` to verify that only needed build inputs and `.gitignore` are tracked and that all of `.scratch/` is ignored.

After consolidation or build-path changes, compile each affected root diagnostically in `.scratch/` and inspect the logs for missing inputs and unresolved or duplicate references. For file-only moves, compare displayed text, numbering and pagination with the baseline. Report any unavailable build or comparison. Workspace creation alone requires no PDF generation.
