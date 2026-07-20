# Conceptual Figure Prompt Templates

Use only for non-data conceptual diagrams. Never ask an image model to invent maps, forecast fields, observations, equations, or quantitative results.

## Earth-system or forecast workflow

```text
Create a clean academic schematic for [venue] showing [scientific workflow].
Components: [named components].
Physical/data quantities on connections: [variables and units where relevant].
Solid arrows mean [meaning]; dashed arrows mean [meaning].
Visually distinguish observations, physical models, ML components, and verification products.
Use a white background, flat vector shapes, accessible colors, readable sans-serif labels,
no decorative imagery, no gradients, and no unlabeled arrows.
Do not add components, equations, labels, or relationships not listed here.
```

## Mechanism hypothesis

```text
Create a two-part scientific mechanism schematic.
Left: established relationships supported by [diagnostics].
Right: hypothesized relationship to be tested.
Use explicit physical quantities and directionality. Mark hypotheses with dashed outlines.
Include no numerical result and invent no causal connection.
```

After generation, recreate or correct the result in a controllable vector tool when precision matters. Verify all scientific content manually.
