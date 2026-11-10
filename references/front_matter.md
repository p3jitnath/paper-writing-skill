# Titles, Abstracts, Key Points, and Availability Statements

Use supplied venue requirements when available. Verify current requirements for submission preparation or when the requested text depends on a venue rule. Preserve established language, structure, and word constraints rather than inheriting settings from another paper.

## Title

Use either a descriptive scientific claim/capability or `Named method: functional contribution`. Avoid unsupported superlatives and field-wide claims.

## Abstract

For abbreviation definitions across the abstract, introduction, and conclusion, follow [prose conventions](prose_style.md#connected-explanation).

Keep abstracts at or below **2,000 characters, including spaces**, as the user's established preference. Also satisfy any stricter current venue constraint; a later explicit user instruction can change this preference. Do not substitute a word count for the character check or assume that this alone establishes venue compliance.

Count the final reader-facing abstract mechanically, including punctuation and displayed mathematical text. Exclude the abstract heading, LaTeX command syntax, and environment delimiters, but include text displayed through command arguments. For a plain-text paragraph, normalise source line wraps and repeated whitespace to single spaces, then use `len(" ".join(abstract.split()))`. Check the intended accepted reading when markup is present and recount after every further abstract edit. Use the venue's counting convention too when it differs.

Use this sequence, adapting it to genre:

1. Scientific problem or community bottleneck.
2. Specific limitation in current approaches.
3. Method, resource, protocol, or framework introduced.
4. Evaluation setting: data/reference, scale, period, or physical case.
5. Principal quantitative or mechanistic results.
6. Important limitation and bounded implication when material.
7. A constructive, future-facing synthesis as the final sentence.

Always end an abstract on a high note for the future. Use the final-sentence pattern “Together, these experiments …”, adapting the subject to the actual contribution for nonexperimental papers, such as “these analyses” or “these results”. Connect the supported findings to a specific future scientific capability, application or next investigation. A schematic formulation is “Together, these experiments established a foundation for [specific future capability or investigation].” Keep completed-work claims in past tense and distinguish future potential from demonstrated outcomes. Retain material limitations and uncertainty. For negative or unresolved findings, close on the useful constraint, clarified question or next decisive test that the work identified.

Do not turn the abstract into an architecture inventory. Give enough experimental coordinates to interpret headline numbers, or state the assumptions and scope of a theoretical result. Keep the abstract and concluding section aligned in their principal claim, certainty, assumptions, and scope. They should carry the same scientific message; repeat wording exactly only when the user requests it.

## AGU/JAMES Key Points

Write three standalone, result-bearing bullets. Each should communicate one contribution or finding without citations, abbreviations that require the paper, or vague verbs such as “explores.” Resource and protocol papers may use one bullet for the reusable artifact and one for the scientific capability it enables.

## Plain Language Summary

Explain the scientific question, the gap in current understanding or methods, what was done, what was learned, and why it matters. Avoid equations, unexplained model names, specialist acronyms, and inflated societal claims. Preserve uncertainty and limitations.

## Availability

Name exact repositories, persistent archives/DOIs, versions, licenses, access restrictions, weights/checkpoints, preprocessing, evaluation, and plotting code. For protocols, link experiment specifications and requested-variable tables. Test every link before submission.
