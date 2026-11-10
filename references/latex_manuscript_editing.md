# LaTeX manuscript editing

Use only for the requested source, structure, or layout change. Follow current user, project, and venue requirements; page budgets, source formatting, and caption gaps are project settings.

## Paper workspace

For a new paper folder, follow [paper workspace](paper_workspace.md). Keep `main.tex`, supporting files named `s01_abstract.tex`, `s02_introduction.tex` and so on, and the `.bib`, `.cls` and `.sty` build inputs at the root. Keep all final figure inputs directly in `figures/`, with no child directories, and all non-build material inside hidden, gitignored `.scratch/`. Strongly discourage other folder layouts and use Git for revision history. A local edit to an existing manuscript must preserve the current source until a requested consolidation or conversion is authorised.

## Establish the active build

Identify the root document, included sources, bibliography, relevant assets, engine, bibliography processor, and intended output. Inspect current content and existing version-control changes. A prior PDF, filename, source comment, or successful build does not establish the state of the current inputs.

Follow [Overleaf and diagnostics](paper_workspace.md#overleaf-and-diagnostics). Direct normal manuscript compilation to Overleaf and generate a paper PDF in the paper folder only on an explicit user request. Confine diagnostic builds and all other diagnostic material to gitignored `.scratch/`, including logs, auxiliary files, package caches, preview images and temporary scripts. A rendering check permits a diagnostic build under this rule.

Preserve the supplied template distribution and unrelated preamble code. Make a necessary package or definition addition narrowly and record its purpose. Change class, style, or bibliography-style files only when explicitly in scope. Follow established source-line conventions; a prose edit does not require whole-document reflow. For requested whitespace-only reflow, preserve paragraph and environment boundaries and verify that rendered text and layout are unchanged.

## Required paper preamble

When creating a paper or editing its preamble, include these exact definitions in the active preamble, after loading the required packages. Load `xcolor` and `soul` first, reusing compatible existing package declarations and options. A label-only correction preserves existing preamble definitions.

```latex
\usepackage{xcolor}
\usepackage{soul}

\renewcommand{\thefootnote}{\alph{footnote}}

\newcommand{\todo}[1]{\begingroup\sethlcolor{yellow}\hl{\textbf{TODO:} #1}\endgroup}
```

Keep one definition of `\todo` and reconcile existing definitions before adding the required macro. If a supplied class or package already defines it, clear the conflicting command in the paper preamble with `\let\todo\relax` before the required `\newcommand`, preserving unrelated template code. Check that alphabetical footnotes and the required TODO definition remain active after all preamble inputs.

## Figure placement

When creating figures or changing their placement, write every figure environment as `\begin{figure}[!h]` or `\begin{figure*}[!h]`. Within that scope, replace `[htbp]`, any other figure placement option or a missing placement argument with `[!h]`. Apply this to reused manuscript and template figures, appendices and supplements. Preserve the included asset, dimensions, caption and label while correcting placement. A label-only correction preserves existing placement.

When figure placement is in scope, check every included `.tex` source to confirm that each `figure` and `figure*` declaration has exactly `[!h]`. Inspect the rendered reading order and caption association when rendering verification is in scope, following the diagnostic build rules above.

## Labels and cross-references

Use a consistent appendix namespace with object-type prefixes, such as `fig:app-tensor-exchange`, `tab:app-settings`, `eq:app-update` and `sec:app-methods`. Keep main-text and appendix identifiers distinct. When correcting identifiers, record the old-to-new mapping and update every dependent reference together, including references in the main text, captions, supplements and custom reference macros. Preserve the manuscript's established reference commands.

A label correction must preserve prose, equations, numerical results, captions, object order, preamble definitions and layout settings. Do not apply unrelated figure-placement or style defaults. Flag scientific uncertainty separately rather than resolving it during the correction.

Before editing, retain a current baseline or build the unmodified source diagnostically in `.scratch/`. After editing, search the affected sources for stale identifiers, missing targets and duplicate label definitions. Compile the active root through the necessary bibliography and cross-reference passes in `.scratch/`, then inspect the logs for undefined or multiply defined references. Compare displayed text page by page, reference numbering and pagination with the baseline. PDF metadata or byte differences alone do not establish a visible change. Inspect affected pages if the comparison reveals a difference. Report any unavailable baseline, tooling or failed build and limit the verification claim accordingly.

## Structure and evidence dependencies

Adapt headings and section lengths to their jobs and the research genre. Merge genuinely duplicated material during authorised structural work, but do not add paragraphs or subsections to meet a universal count.

Connect claims to recoverable evidence and cite relevant figures, tables, and appendices. Numerical evidence may be explained directly in prose when a table or plot adds no interpretive value. Organise supplements by reader needs such as reproducibility, proofs, controls, and detailed results; keep incidental run bookkeeping in technical documentation.

Before removing a paragraph, row, figure, or comparator, identify the claims that depend on it. Keep necessary qualifications and revise dependent emphasis and references. Within a local task, flag an unsupported dependency rather than restoring whole sections or running an experiment without authorisation.

## Fit a page constraint

Determine whether the limit covers the body, references, appendices, or a combination. Inspect a current supplied PDF or a diagnostic build confined to `.scratch/` before selecting a repair. Use the project engine without generating an unrequested manuscript PDF elsewhere in the paper folder.

Locate the source of excess space: unused figure canvas, inclusion size, table geometry, float placement, surrounding spacing, or repeated content. Tight cropping cannot repair reading order, and negative document spacing cannot remove whitespace inside an image. Preserve aspect ratios, effective font sizes, explicit caption gaps, and template requirements.

Choose changes within the authorised scope. A citation-placement-only task allows citation movement that preserves attribution, not hidden prose changes or figure resizing. A layout task with protected wording permits presentation changes only. When compression is authorised, remove repetition while preserving definitions, assumptions, evidence, and logical links. Do not apply fixed section-reduction percentages, minimum linewidth fractions, or inherited spacing adjustments from another paper.

Use local layout controls only where the template permits them and inspect their effect on adjacent pages and floats. Keep diagnostic markers temporary and remove them from the final source. If the remaining constraints cannot be satisfied within scope, complete independent permitted repairs and present the concrete remaining trade-off for a scope decision.

## Verify affected output

For changes that affect rendering, inspect a current supplied PDF or perform a diagnostic build confined to `.scratch/`. Keep every inspection artifact there, including page images, close-ups and diagnostic logs. Inspect relevant pages and neighbours for reading order, float movement, glyph collisions, caption association, overflow, and effective figure/table typography. Verify page-count claims against the applicable part of the current PDF, and check generated reference text and links when bibliography rendering is in scope.

Report the page count only for a PDF actually inspected, along with retained layout changes and any unverified part. A successful compile does not establish that numerical values, scientific claims, or ordinary prose are correct.
