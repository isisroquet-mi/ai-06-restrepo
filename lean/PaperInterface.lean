import AR18RaceManMachine.MainTheorems
import AR18RaceManMachine.Assumptions

/-!
# Human-Facing Paper Interface: The Race Between Man and Machine: Implications of Technology for Growth, Factor Shares and Employment

This is the compact Lean file a human should read after formalization to check
whether the paper's definitions and named theorem statements were represented
correctly. Keep the row-level dashboard and LLM audit statements in this file
for every paper. Move implementation details, proof aliases, and bulky helper
lemmas behind imported modules such as `AuditInterface.lean`, but expose the
audited paper-facing statements directly here; do not use
`paper_interface.audit_surface_path`.

Rules for completing this file:

- Keep the paper's definitions/formatted objects first, in source order.
- Expose the actual paper formulas here; do not only point to generic library
  definitions or implementation witnesses.
- A material reusable `AppliedModelingLib` primitive may remain a reference here only
  after `audit/library_semantic_review.json` records its exact bounded library
  declaration and an explicit byte-pinned paper-source connection. The
  dashboard and human-review packet show and source-check that declaration
  before the dependent Spec; a library name, docstring, or glossary is not a
  semantic bridge. Do not add a duplicate paper claim merely to restate it.
- If a named theorem needs a hypothesis that is not derived from earlier Lean
  declarations, declare that hypothesis in `Assumptions.lean` and list it in
  `status.json` `review_surface.assumption_names`.
- Then state the named results directly, with assumptions visible in each
  theorem signature by referencing named paper assumptions imported from
  `Assumptions.lean`.
- In the statement-first phase, write every complete source-facing statement as
  a transparent `<name>Spec : Prop` here, exactly once. Put the paired
  theorem/lemma of that exact type in `ProofInterface.lean`; its temporary
  proof body may be `by sorry` only in a private draft. This separation keeps
  the human semantic surface free of thin wrapper declarations.
- Before drafting that Lean surface, independently inventory every material
  source atom from exact pinned source quote bytes. Do not infer source atoms
  from declaration, binder, field, function, or source-map names.
- Run raw-source-to-expanded-Spec statement matching plus Lean-emitted
  premise/conclusion claim-atom review on the skeleton. The semantic comparison uses
  only byte-pinned source quotes (and separately pinned source context) against
  the expanded transparent Spec; map summaries and proof wrappers are not
  semantic inputs. Then freeze each canonical Lean declaration-manifest digest.
- In the proof phase, replace the `ProofInterface.lean` `sorry` with a short
  proof that calls into `MainTheorems.lean` or lower proof files without
  changing the specification or theorem type. Any specification/type change
  invalidates the freeze and requires a fresh statement audit.
- At formalized closeout, complete the v11 realization receipt: Lean Meta checks
  the theorem has exactly the transparent Spec type; each source atom is bound
  to the elaborated Spec surface; closure traversal includes proof and instance
  arguments; and every material terminal has a source, approved correction or
  additional assumption, checked derivation, or version-pinned foundation
  disposition. No data, container, or identifier-based exemption is allowed.
- The transparent `...Spec` is the sole semantic-review target for its source
  claim. The paired theorem/lemma is a proof endpoint whose exact Spec type is
  verified by Lean Meta, not a duplicate source-to-Lean comparison row.
- Keep proof endpoints, exhaustive endpoint aliases, and proof-seam checks in
  `ProofInterface.lean`, implementation modules, or `ProofLedger.lean`, not
  here. Do not create new `PostPaperAudit.lean` or `AuditLedger.lean` files;
  those names are legacy.

## Selected result

The source is NBER Working Paper 22252, revised June 2017, Proposition 3,
printed pages 12--14 (PDF pages 14--16).  This interface deliberately selects
only the algebraic wage component for technology-constrained automation with
`dN = 0`.  It does not claim coverage of the full proposition.
-/

namespace AR18RaceManMachine

/-- Selected algebraic component of Proposition 3.  `productivity` denotes the
strictly positive productivity effect per unit of automation and `displacement`
denotes `Λ_I / (σ_hat + ε_L)`.  The two displayed premises are the aggregate
factor-price decomposition and the relative factor-price response used in the
manual derivation. -/
def propositionThreeWageEffectSpec : Prop :=
  ∀ laborShare productivity displacement dI dlnW dlnR : ℝ,
    0 < laborShare →
    laborShare < 1 →
    0 < productivity →
    0 < displacement →
    0 < dI →
    laborShare * dlnW + (1 - laborShare) * dlnR = productivity * dI →
    dlnW - dlnR = -displacement * dI →
    dlnW = (productivity - (1 - laborShare) * displacement) * dI ∧
      (0 < dlnW ↔ (1 - laborShare) * displacement < productivity)

end AR18RaceManMachine
