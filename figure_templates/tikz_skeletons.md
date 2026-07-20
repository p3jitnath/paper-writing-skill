# TikZ Skeleton: Hybrid Weather/Climate Workflow

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
