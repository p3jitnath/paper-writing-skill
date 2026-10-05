# Scientific prose conventions

Apply these principles to the edited passage and its necessary context. Preserve the author's voice and current project settings; use British English only as a fallback when no variety is established. Preserve literal code, symbols, citation keys, official titles, names, and quotations.

## Punctuation

Apply the [prose punctuation rule](../SKILL.md#prose-punctuation) to authored manuscript text, headings, captions, and notes. Remove semicolons and colons by recasting the sentence, preserving the rule's title, literal-syntax, and protected-text exceptions. A punctuation scan complements the contextual read and does not replace it.

## Audience and writing convention

Apply the requested audience and writing convention to every authored surface, including short labels and supporting documentation. For a first-year undergraduate audience, introduce the physical idea in familiar language, define unfamiliar terms and abbreviations before relying on them, state units and explain what each equation does. Preserve the necessary science and use connected clauses rather than a sequence of unexplained short statements. A project adaptation of a writing standard does not establish formal compliance with the official standard.

Begin with the wider scientific motivation selected by the project before introducing the tool or implementation. For an Earth system model development project, explain the need to represent interacting physical processes and the relevant development problem before narrowing to code generation. Retain the [introduction opening and citation requirements](../section_rhetorical_moves/introduction.md#opening-and-citation-requirements) when writing a full paper introduction. A short poster Motivation panel follows its own agreed format.

A Summary should state what was done or found and the conditions under which it holds. When a reusable skill or instruction set is part of the contribution, explain its development and role in Methods, then state the supported outcome in Summary. Do not substitute an empty claim of usefulness, promise or importance for that explanation.

## Connected explanation

Each sentence must be understandable from prior context. Introduce technical terms, acronyms, symbols, model components, and unusual metrics before or at first use; avoid defining ordinary terms. Redefine every abbreviation used in the abstract at its first use in both the introduction and conclusion, even if it was defined earlier. If advance explanation is impossible, explain the idea in the same sentence or, at most, the next, never paragraphs later. For a symbol or concept last explained several sections or subsections earlier, add a brief reminder and a verified section cross-reference when helpful.

Read a changed sentence with its neighbours. Identify the known object, what is added, and why the next sentence follows. Name the relationship before adding a connector: definition, elaboration, consequence, contrast, evidence, or qualification. Repeating a stable technical noun often works better than a stock transition. A changed comparator or population needs to be made explicit. Flag topic jumps, implicit links, and paragraphs that read as disconnected facts; make each idea's relevance, connection to the next, and consequence explicit.

For substantial drafting, give each paragraph and section a distinct job. Question → result → interpretation and object → operation → consequence are useful diagnostics, not fixed sentence templates. Retain the definitions and premises that make compressed prose understandable. Short definitions and longer linked explanations are both appropriate; sentence length, opening words, and punctuation are not quality tests by themselves.

Introduce an equation's purpose, define new notation, and explain a useful sign, limit, invariant, or consequence. Avoid word-for-word restatement of symbols. Use [mathematical methods](mathematical-methods.md) when changing formulas, assumptions, or computational claims.

## Claims and language

Prefer concrete scientific subjects and documented operations. Use active or passive voice according to the object in focus; first-person plural is useful for author choices when it fits the manuscript. Keep one term per defined concept and resolve ambiguous pronouns. Explain rather than replace necessary specialist terminology.

Match certainty to evidence. Preserve effect sizes, uncertainty, comparator, and evaluation conditions; do not turn favourable estimates into resolved improvements or an unresolved result into equivalence. Keep qualifications beside claims where they change interpretation and consolidate repeated caveats only when the local meaning remains clear.

Review vague subjects, repeated reasoning, promotional claims, and empty conclusions in context. Replace them with a supported operation or consequence, or remove redundancy within scope. A closing sentence should advance or complete the argument, not merely announce that it matters.

Retain the user's established vocabulary preference in [banned_words_phrases.txt](banned_words_phrases.txt). Read it when drafting or revising manuscript prose and avoid its entries, matching complete words or phrases case-insensitively. Scan changed prose, captions, headings, tables, and author-facing notes; preserve protected text, quotations, official names, code, identifiers, and bibliography metadata, and report necessary retained exceptions. This explicit preference is separate from judging scientific clarity or authorship, and later user instructions take precedence.

Check grammar, spelling, possessives, agreement, duplicate words, and punctuation after conceptual edits. Include in-scope captions, headings, and table labels. Read the intended accepted text when revision markup is present, then finish with a continuous contextual read; regex matches and successful compilation cannot establish coherence.

## Optional specialised support

An available `proofread-technical-prose` skill provides more detailed coherence guidance and constructed examples, but is not required for ordinary drafting. For sustained weather/climate writing, [corpus style](corpus_style.md) and `author_profile/voice_profile.md` supply domain conventions. Select a named author overlay only when requested or appropriate for a new draft; see [project planning](project_planning.md#select-a-voice). Do not import its domain assumptions into unrelated work.
