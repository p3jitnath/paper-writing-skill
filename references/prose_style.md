# Scientific prose conventions

Apply these principles to the edited passage and its necessary context. Preserve the author's voice and current project settings; use British English only as a fallback when no variety is established. Preserve literal code, symbols, citation keys, official titles, names, and quotations.

## Punctuation

Apply the [prose punctuation rule](../SKILL.md#prose-punctuation) to authored manuscript text, headings, captions, and notes. Remove semicolons and colons by recasting the sentence, preserving the rule's title, literal-syntax, and protected-text exceptions. A punctuation scan complements the contextual read and does not replace it.

## Audience and writing convention

For research manuscripts, use polished and fluid publication-quality academic English. When the target is the Journal of Advances in Modeling Earth Systems (JAMES), carry that academic convention through the manuscript and captions. Verify current venue requirements separately when submission work is requested. An explicitly requested teaching audience still governs the depth of explanation.

Apply the requested audience and writing convention to every authored surface, including short labels and supporting documentation. For a first-year undergraduate audience, introduce the physical idea in familiar language, define unfamiliar terms and abbreviations before relying on them, state units and explain what each equation does. Preserve the necessary science and use connected clauses rather than a sequence of unexplained short statements. A project adaptation of a writing standard does not establish formal compliance with the official standard.

Begin with the wider scientific motivation selected by the project before introducing the tool or implementation. For an Earth system model development project, explain the need to represent interacting physical processes and the relevant development problem before narrowing to code generation. Retain the [introduction opening and citation requirements](../section_rhetorical_moves/introduction.md#opening-and-citation-requirements) when writing a full paper introduction. A short poster Motivation panel follows its own agreed format.

A Summary should state what was done or found and the conditions under which it holds. When a reusable skill or instruction set is part of the contribution, explain its development and role in Methods, then state the supported outcome in Summary. Do not substitute an empty claim of usefulness, promise or importance for that explanation.

## Scientific argument

Build a continuous argument through observation → problem → response → result → consequence across the relevant passage and sections. Establish the observation or premise, explain the problem it exposes, motivate the response, report the supported result and identify its scientific consequence. Keep the first two introduction paragraphs devoted to context and motivation. Every sentence must advance the argument through necessary context, a definition, reasoning, evidence, interpretation or consequence. A sentence that only lists a disconnected fact needs its scientific role made explicit, or removal when redundant and within scope.

Prefer a coherent sentence that combines a supported result, its interpretation and the underlying trade-off or distinction when that connection is established by the evidence. Keep the thought readable and split it when needed for clarity. Use bridges such as “To address this trade-off…” or “This distinction motivates…” when the preceding finding actually motivates the next methodological or scientific step. Name the relationship rather than inserting a stock connector or inventing a causal link.

## Connected explanation

Each sentence must be understandable from prior context. Define every acronym, specialised term, metric and architectural component at first use. Explain a component's function and relationship to the architecture. For a metric, state what it measures and, where relevant, its units, reference and direction of improvement. Introduce symbols before relying on them and explain unfamiliar ideas in the sentence where they first appear. Ordinary nontechnical words do not need glosses. Redefine every abbreviation used in the abstract at its first use in both the introduction and conclusion, even if it was defined earlier. For a symbol or concept last explained several sections or subsections earlier, add a brief reminder and a verified section cross-reference when helpful.

Read a changed sentence with its neighbours. Identify the known object, what is added, and why the next sentence follows. Name the relationship before adding a connector: definition, elaboration, consequence, contrast, evidence, or qualification. Repeating a stable technical noun often works better than a stock transition. A changed comparator or population needs to be made explicit. Flag topic jumps, implicit links, and paragraphs that read as disconnected facts; make each idea's relevance, connection to the next, and consequence explicit.

For substantial drafting, give each paragraph and section a distinct job within the scientific argument. Question → result → interpretation and object → operation → consequence can organise individual explanations within the wider observation → problem → response → result → consequence progression. The progression spans the argument and does not require all five moves in every paragraph. Retain the definitions and premises that make compressed prose understandable. Short definitions and longer linked explanations are both appropriate. Sentence length, opening words and punctuation are not quality tests by themselves.

Introduce an equation's purpose, define new notation, and explain a useful sign, limit, invariant, or consequence. Avoid word-for-word restatement of symbols. Use [mathematical methods](mathematical-methods.md) when changing formulas, assumptions, or computational claims.

## Claims and language

Prefer concrete scientific subjects and documented operations. Use active or passive voice according to the object in focus; first-person plural is useful for author choices when it fits the manuscript. Keep one term per defined concept and resolve ambiguous pronouns. Explain rather than replace necessary specialist terminology.

State supported results positively, precisely and confidently with concrete subjects and documented operations. Remove unnecessary hedges and repeated caveats while preserving calibrated uncertainty. Preserve every numerical result, effect size, comparator, evaluation condition and scientific distinction. Do not invent superiority, causality or statistical significance, turn favourable estimates into resolved improvements, or turn an unresolved result into equivalence.

Keep numerical uncertainty and conditions that determine a result's meaning beside the result. Concentrate broader limitations, exclusions and scope qualifications neutrally in the appropriate Discussion or Scope section. Consolidate repeated caveats without deleting material adverse evidence or weakening the supported finding. Each result statement must remain accurate on its own.

Review vague subjects, repeated reasoning, promotional claims, and empty conclusions in context. Replace them with a supported operation or consequence, or remove redundancy within scope. A closing sentence should advance or complete the argument, not merely announce that it matters.

Retain the user's established vocabulary preference in [banned_words_phrases.txt](banned_words_phrases.txt). Read it when drafting or revising manuscript prose and avoid its entries, matching complete words or phrases case-insensitively. Scan changed prose, captions, headings, tables, and author-facing notes; preserve protected text, quotations, official names, code, identifiers, and bibliography metadata, and report necessary retained exceptions. This explicit preference is separate from judging scientific clarity or authorship, and later user instructions take precedence.

Check grammar, spelling, possessives, agreement, duplicate words, and punctuation after conceptual edits. Include in-scope captions, headings, and table labels. Read the intended accepted text when revision markup is present, then finish with a continuous contextual read; regex matches and successful compilation cannot establish coherence.

## Optional specialised support

An available `proofread-technical-prose` skill provides more detailed coherence guidance and constructed examples, but is not required for ordinary drafting. For sustained weather/climate writing, [corpus style](corpus_style.md) and `author_profile/voice_profile.md` supply domain conventions. Select a named author overlay only when requested or appropriate for a new draft; see [project planning](project_planning.md#select-a-voice). Do not import its domain assumptions into unrelated work.
