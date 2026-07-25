# TCCML NeurIPS manuscript conventions

Verify these rules against the current supplied template before use.

- Load the style without options: `\usepackage{tackling_climate_workshop_style}`. The style handles anonymization.
- End the main argument and conclusion by page 4.
- Allow references and appendices to follow the main-paper boundary when the verified template permits them.
- Use Vancouver bibliography style.
- Keep a nonempty authoritative URL in every bibliography entry.
- When appendix numbering is required, use:

```latex
\renewcommand\thesection{Appendix \Alph{section}}
\renewcommand\thesubsection{\Alph{section}.\arabic{subsection}}
\renewcommand\thetable{\Alph{section}.\arabic{table}}
\renewcommand\thefigure{\Alph{section}.\arabic{figure}}
\setcounter{table}{0}
\setcounter{figure}{0}
```
