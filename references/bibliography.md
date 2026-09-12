# Bibliography requirements

For every `.bib` file created or edited, use citation keys in the form `author_papershortname_year`, for example `nath_replacing_2026`.

- Use the first author's family name, lowercase ASCII, followed by a short distinctive title slug and the four-digit year.
- Join components with underscores; remove spaces, punctuation, diacritics, braces, and LaTeX commands.
- Omit articles and generic stopwords from the title slug. Keep it short while remaining recognisable within the bibliography.
- Resolve collisions deterministically with a lowercase letter after the year: `author_shortname_2026a`, `author_shortname_2026b`.
- When renaming an existing key, update every corresponding `\cite`, `\citep`, `\citet`, `\autocite`, or other citation command across the paper. Never leave duplicate keys or broken references.
- Detect duplicate publications represented by both preprint and journal records. Keep one canonical record, prefer the requested published version, and update every affected citation command.
- Require a nonempty `url` field in every bibliography entry, including entries that predate the current edit. A `doi` field does not replace this requirement; when a DOI exists, prefer its canonical `https://doi.org/...` URL.
- Put either a provider landing page or canonical `https://doi.org/...` URL in each required URL field. Do not put a full DOI URL in a `doi` field when the bibliography style adds the resolver prefix. Encode legacy DOI characters safely for BibTeX, LaTeX, and the embedded URI.
- For works without a DOI, use the authoritative publisher, repository, dataset, software-release, standards-body, or institutional record URL. Do not invent a URL.
- Before delivering a created or edited bibliography, scan every entry for a `url` field and test that each URL resolves. After compilation, inspect embedded PDF URI targets rather than printed bibliography text alone. Confirm that DOI links contain exactly one resolver prefix, contain no LaTeX escapes or literal angle brackets, and redirect through doi.org. Distinguish a publisher's automated-access denial after a valid DOI redirect from a broken DOI. Treat any missing or unverified URL as an unresolved bibliography error and report it explicitly; do not present the bibliography as complete.

Apply this audit when creating, editing, or reviewing a bibliography. A prose-only change does not require rewriting untouched bibliography records. If external verification is unavailable, retain known records, flag the unverified links, and complete independent edits.
