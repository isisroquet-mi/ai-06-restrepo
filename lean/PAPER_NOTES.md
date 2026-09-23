# The Race Between Man and Machine: Implications of Technology for Growth, Factor Shares and Employment Formalization Notes

This is a lightweight handoff document for source-to-Lean mapping.

- Namespace: `AR18RaceManMachine`
- Official URL: https://www.nber.org/papers/w22252
- Source PDF: `source.pdf`
- Local source text cache, if generated: `source.txt` (ignored by Git in public workspaces)

## Formalization checklist

- [ ] Full named-result inventory copied to the README theorem table.
- [ ] DAG graph includes all required paper-stage nodes and dependencies.
- [ ] README status and remaining-assumption notes match proof artifacts.
- [ ] Post-formalization library elevation pass completed: reusable proof
      results, techniques, and primitives were moved into `AppliedModelingLib` when
      local/low-risk, or recorded with destination modules in the final report.
- [ ] Recursive provenance is clear in the consolidated paper closeout. Run a
      standalone repository-wide provenance audit only for a named diagnostic
      failure or at an explicit integration/release boundary.
- [ ] Final status review completed before publishing.

## Notes

- Date reviewed: 2026-09-23
- Last theorem row formalized: Selected algebraic component of Proposition 3
  (`propositionThreeWageEffectSpec`).
- Outstanding assumptions / caveats: The two comparative-static equations are
  premises. The derivation from the production model and all unselected results
  remain outside this partial submission.
- Reusable library elevation candidates:

