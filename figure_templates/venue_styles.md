# Venue and Figure Styling

Always verify the target venue's current template. Record actual column width in the figure spec rather than relying on a remembered value.

## Venue families

- **AMS journals:** Favor self-contained scientific captions, readable multi-panel layouts, explicit units, and restrained annotation.
- **AGU journals / JAMES:** Prioritize reproducible diagnostics, consistent panel labels, and figures that remain interpretable in HTML and PDF.
- **Copernicus / GMD:** Use figures that expose model configuration, evaluation, and reproducibility; keep code and data identifiers aligned with captions.
- **ML conferences:** Fit the required two-column template while preserving scientific coordinates, uncertainty, and readable maps.

## Visual rules

- Minimum final-size text: 8 pt; prefer 9 pt.
- Use perceptually uniform, color-vision-accessible sequential or diverging maps. Center diverging scales on a scientifically meaningful reference.
- Do not use rainbow color maps.
- Use identical scales for panels intended for direct comparison; state when scales differ.
- Encode uncertainty with intervals, distributions, stippling, hatching, or ensemble spread appropriate to the data.
- Show coastlines, boundaries, and geographic detail only when they aid interpretation.
- Label latitude/longitude, pressure/height, lead time, and units explicitly.
- Ensure line style, marker, or annotation—not color alone—distinguishes critical series.
- Avoid gradients, shadows, decorative icons, and generated photorealistic Earth imagery in scientific schematics.

## Print and export checks

1. Inspect at final width and 100% zoom.
2. Verify embedded fonts and vector output where possible.
3. Check grayscale and common color-vision simulations.
4. Confirm no cropping, rasterized text, inconsistent panel labels, or unreadable legends.
5. Compare every plotted number and caption statement with the versioned source artifact.
