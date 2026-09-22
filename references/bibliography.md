# Bibliography requirements

Match the audit to the request. A prose correction does not require a bibliography audit; a selected-record repair does not imply that all records have been verified. Preserve explicitly protected citation keys and document structure. State the scope actually checked.

## Record identity and metadata

For a full integrity audit, enumerate active citations, missing keys, unused records, duplicate works, and malformed entries. Inspect complete author lists and their order and spellings, including records abbreviated with “et al.”, plus title, version, venue, year, and identifiers against authoritative publisher, repository, dataset, software-release, or institutional records. Syntax parsing alone does not verify metadata.

When authoritative records disagree, inspect the underlying primary records and distinguish versions. Record an unresolved disagreement rather than guessing a merged name or date. Prefer the requested publication version; merge preprint and journal duplicates only when they represent the same cited work and the citation's meaning is preserved. Never invent missing fields.

## Citation keys

For created or edited `.bib` files, the house key form is `author_papershortname_year`, for example `nath_replacing_2026`, unless the user or project protects another scheme.

- Use the first author's family name, lowercase ASCII, a short distinctive title slug, and the four-digit year, joined with underscores.
- Remove spaces, punctuation, diacritics, braces, and LaTeX commands; omit generic title stopwords.
- Resolve collisions deterministically with a lowercase year suffix, such as `author_shortname_2026a`.
- For authorised key changes, update every affected citation command and check for duplicates and missing references. Do not broaden a prose-only task into key renaming.

## URLs and rendered references

Require a nonempty, verified `url` field in bibliography records being delivered as complete; a `doi` field alone is insufficient. For a full bibliography edit or audit, scan every entry. Use a canonical `https://doi.org/...` URL when appropriate, otherwise an authoritative landing page. Keep only the DOI identifier in a `doi` field when the renderer supplies its resolver prefix. Preserve characters correctly through BibTeX, LaTeX, and URI encoding.

Test that links identify the intended work and version. Distinguish a valid DOI redirect followed by a publisher's automated-access denial from a broken DOI. Report unverified access or metadata precisely without inventing a URL or claiming a complete audit.

When a document build is available and bibliography rendering is in scope, inspect generated reference text and actual embedded hyperlink targets. A macro, style, or rendering rule can override correct source metadata. Check for truncated author lists when full authors were requested, duplicated DOI resolver prefixes, literal LaTeX escapes or angle brackets in URLs, and links to the wrong version.

Keep source-to-claim attribution clear when moving or grouping citations. If rendering or external verification is unavailable, retain supported records, state the specific unverified part, and finish independent repairs.
