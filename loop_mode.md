# Resumable Paper Audit

For long papers, maintain `notes/AUDIT_LEDGER.md` with one row per section.

| Section | Claim/evidence | Data/leakage | Verification | Physics/uncertainty | Reproducibility | Prose | Status |
|---|---|---|---|---|---|---|---|

Process one section per iteration:

1. Read `project_context.md` and the ledger.
2. Select the next section with `PENDING` or `FINDINGS` status.
3. Apply `references/scientific_rigor.md`, the section checklist, and `red_team_protocol.md`.
4. Fix authorized prose or report experiments/data needed for findings that cannot be fixed editorially.
5. Re-run affected checks and update the ledger with evidence.
6. Rebuild and visually inspect figures or PDF pages changed by the revision.

Stop when all in-scope rows are `CLEAN`, or when the same blocker survives two iterations and requires new evidence or user direction.
