# LaTeX manuscript editing

## Protect templates and source boundaries

Identify whether the project uses a supplied venue template before editing. Treat the template distribution as immutable. In the manuscript source, edit only between `\begin{document}` and `\end{document}` unless a required package or definition must be added to the preamble. Make the smallest necessary preamble addition and record why it is required. Do not clean up, reorder, or modernise unrelated preamble code. Do not edit class, style, bibliography-style, or template files unless the user explicitly requests that exact file and the change is necessary.

Keep each prose paragraph on exactly one physical source line and each complete `\caption{...}` command on exactly one physical source line. Preserve blank lines between paragraphs. Do not join equations, tables, comments, unrelated commands, or environment boundaries into prose lines. After a whitespace-only reflow, compile and verify that the page count, rendered text, word positions, floats, and references are unchanged.

Apply `\small` to tables and the reference list unless the user or template explicitly requires another size. Prefer a local table scope and the template-supported bibliography hook so the change cannot leak into surrounding prose.

## Check section architecture and evidence links

Require at least two substantive paragraphs in every section, subsection, and subsubsection. Require at least two subsections within each section. Merge or restructure underdeveloped headings rather than padding them with empty prose.

Every evidential number or statistic in the paper must appear in an accompanying figure or table. Cite every figure and table in the main text. Cite every appendix from the main text; within appendices, use section-level citations when citing every figure or table would add noise. Audit both directions: claim to evidence object and evidence object to prose callout.

Make appendices concrete and scannable. Prefer tables for structured comparisons, bullet points for discrete specifications, and figures for visual evidence. Retain prose for interpretation and transitions, but split large walls of text.

## Fit the main matter to a page limit

Preserve scientific content, figure scale, and template integrity while fitting the main matter:

1. Begin with no more than half a page of excess main-matter content. If the draft exceeds the limit by more, revise content before applying layout adjustments.
2. Insert temporary `\clearpage` checkpoints at reasonable boundaries to identify where content leaks across the limit. Keep temporary page-fitting commands together beside the relevant `\clearpage` so a reader can find and remove them easily.
3. Inspect the rendered page for dangling line fragments, especially one- to three-word spillovers. Trim or recast the responsible sentence without changing its meaning.
4. Trim the Introduction and Conclusion first, limiting each section's reduction to ten per cent. Preserve the central claim, evidence, caveats, and the aligned high-ending sentences of the abstract and conclusion.
5. Keep figures close to the available `\linewidth`; do not shrink a figure below `0.85\linewidth` to solve a page-limit problem. Do not edit source artwork or distort its aspect ratio for page fitting.
6. If needed, use `\enlargethispage{...}` locally, with an absolute adjustment no greater than `2\baselineskip`.
7. If needed, reduce the vertical space between the title and abstract by at most `5mm` without editing the template or style files.
8. If needed, use a local `\vspace*{...}` adjustment at the top of a specific page with an absolute magnitude no greater than `1.5cm`.
9. Group any `\clearpage`, `\enlargethispage{...}`, and page-specific `\vspace*{...}` commands together at the documented checkpoint. Do not scatter invisible spacing fixes through the source.
10. Recompile after each adjustment and inspect the affected page plus the following page for float movement, new widows or orphans, altered references, and other whack-a-mole effects. Remove temporary `\clearpage` checkpoints that are not required in the final source.

Report the final main-matter page count, the adjustments retained, and any remaining layout trade-off.
