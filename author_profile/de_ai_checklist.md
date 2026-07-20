# Mechanical and De-AI Prose Check

Run on changed prose, then inspect every hit in context. A hit is a review prompt, not an automatic error.

## Remove

- Throat-clearing: “It is important to note,” “In order to,” “This section presents.”
- Hype: “groundbreaking,” “revolutionary,” “remarkable,” “unprecedented” without a defined comparison.
- Empty intensifiers: “very,” “highly,” “significant” when no statistical meaning or magnitude follows.
- Decorative antithesis, canned triads, editorializing closers, and repeated em-dashes.
- Vague mechanism verbs: “captures,” “leverages,” “encodes,” or “understands” without stating what relationship is represented or tested.
- Unsupported certainty: “proves,” “causes,” “generalizes,” “physically consistent,” or “operational.”

## Preserve

- Necessary uncertainty and modal language.
- Qualified claims tied to sampling, internal variability, observational uncertainty, or model spread.
- Standard domain terminology and mathematical definitions.
- Passive voice when it keeps the scientific object in focus and does not hide responsibility.

## Suggested scan

```bash
rg -n -i "important to note|in order to|this section (presents|describes)|groundbreaking|revolutionary|remarkable|unprecedented|very|highly|proves?|generalizes?|physically consistent|operational" --glob '*.tex'
```

For each match, keep it only when the surrounding text supplies the comparison, evidence, or operational definition.
