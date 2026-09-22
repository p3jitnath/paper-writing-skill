# Venue and Figure Styling

For venue-specific delivery, verify the current template and actual column width. Retain these in existing figure context when useful; a local edit does not need a new specification file.

## Venue families

- **AMS journals:** Favor self-contained scientific captions, readable multi-panel layouts, explicit units, and restrained annotation.
- **AGU journals / JAMES:** Prioritize reproducible diagnostics, consistent panel labels, and figures that remain interpretable in HTML and PDF.
- **Copernicus / GMD:** Use figures that expose model configuration, evaluation, and reproducibility; keep code and data identifiers aligned with captions.
- **ML conferences:** Fit the required two-column template while preserving scientific coordinates, uncertainty, and readable maps.

## Visual rules

- Size the figure for its scientific content and target reading dimensions, preserving aspect ratio, margins, caption spacing, and reading order.
- Do not shrink figures merely to save pages. When an explicit page or layout requirement forces reduction, use the smallest necessary reduction and retain legible labels, uncertainty encoding, and panel comparisons.
- Follow the established typography profile and current venue requirements. For this project's Nature-style profile, ordinary text is 8 pt with a 7-pt effective minimum; review mathematical glyphs and subscripts at final size too.
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
6. Confirm that the chosen physical size communicates the comparison clearly without wasting space or shrinking essential information.
