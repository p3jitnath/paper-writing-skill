# Editable TikZ overview figures

Use [TikZ, a LaTeX graphics system](https://ctan.org/pkg/pgf), to create a missing paper overview. Replace all generic labels, relationships and caption text with supported paper content before delivery. These skeletons supply editable layouts and do not themselves establish that a paper has a complete overview.

## Required packages

Load these in the active paper preamble, reusing existing declarations where possible.

```latex
\usepackage{tikz}
\usetikzlibrary{arrows.meta,positioning}
```

## General paper overview

Adapt the question, approach or argument, evidence and contribution to the genre. Change the nodes and connections when the paper's actual structure differs. Keep the figure in an active numbered section file or a numbered root fragment. This block includes the figure environment, so input a fragment containing it without adding another figure wrapper. Introduce it in nearby prose with `Figure~\ref{fig:paper-overview}` and use a unique label if that identifier already exists.

```latex
\begin{figure}[!h]
\centering
\begin{tikzpicture}[
  node distance=7mm and 9mm,
  box/.style={draw, rounded corners=1mm, align=center,
    text width=0.34\linewidth, minimum height=13mm, inner sep=3mm,
    font=\sffamily\fontsize{8}{10}\selectfont},
  flow/.style={-{Stealth[length=2mm]}, line width=0.7pt}
]
\node[box] (question) {Scientific question\\or starting point};
\node[box, right=of question] (approach) {Core method\\or argument};
\node[box, below=of question] (evidence) {Evidence or\\validation};
\node[box, below=of approach] (contribution) {Supported contribution\\and scope};
\draw[flow] (question) -- (approach);
\draw[flow] (approach) -- (contribution);
\draw[flow] (evidence) -- (contribution);
\end{tikzpicture}
\caption{Replace with the paper-specific overview, explaining the
  components, relationships and scope supported by the paper.}
\label{fig:paper-overview}
\end{figure}
```

Keep labels readable at the final column or page width. If the actual labels do not fit, revise wrapping, spacing or arrangement while preserving scientific meaning and legible type. Put diagnostic wrappers, PDFs, logs and previews in gitignored `.scratch/`. Follow the [overview workflow](../figure_synthesis_guide.md#required-overview-figure) for integration and verification.

## Hybrid weather or climate workflow

Use this domain-specific alternative only when it matches the paper. The required packages above also apply.

```latex
\begin{tikzpicture}[
  node distance=8mm and 10mm,
  box/.style={draw, rounded corners, align=center, minimum height=7mm, font=\small},
  flow/.style={-{Stealth}, thick},
  hypothesis/.style={draw, dashed, rounded corners, align=center, font=\small}
]
\node[box] (obs) {Observations\\or reanalysis};
\node[box, right=of obs] (prep) {Quality control\\and preprocessing};
\node[box, right=of prep] (model) {Physical--ML\\model};
\node[box, right=of model] (forecast) {Forecast or\\climate diagnostic};
\node[box, below=of forecast] (verify) {Independent\\verification};
\draw[flow] (obs) -- node[above,font=\footnotesize]{variables} (prep);
\draw[flow] (prep) -- (model);
\draw[flow] (model) -- (forecast);
\draw[flow] (forecast) -- (verify);
\end{tikzpicture}
```

Replace every generic label with the paper's actual product, variable, model component, and diagnostic. Keep observations, reanalyses, simulations, forecasts, and verification products visually distinct.
