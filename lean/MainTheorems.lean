import Mathlib

/-!
# Paper-Facing Theorems: The Race Between Man and Machine: Implications of Technology for Growth, Factor Shares and Employment

This file is the implementation theorem layer for the source paper. Keep
source-faithful definitions and theorem wrappers here, and expose only the
compact human-review subset in `PaperInterface.lean`.

During the statement-first phase, each exact paper-facing proposition lives in a
transparent `<name>Spec : Prop` declaration in `PaperInterface.lean`; the paired
theorem/lemma endpoint belongs in `ProofInterface.lean` and has exactly that
type. Add proof implementations here only after those specifications pass v11
raw-source-to-expanded-Spec review and recursive premise provenance audit. Before full closeout, the v11
realization audit independently binds pinned source atoms to the elaborated Spec
and accounts for the complete Lean closure; a proof hole or a declaration name
is never evidence for that correspondence.
-/

namespace AR18RaceManMachine

/-!
This module checks the algebraic core of Proposition 3 in the
technology-constrained case `I* = I < I_tilde`, holding new tasks fixed
(`dN = 0`).  The paper decomposes the change in the equilibrium wage into a
positive productivity term and a negative displacement term.  The code below
does not formalize the production function, differentiation, or the existence
of the threshold capital stock.
-/

/-- Solve the two factor-price equations for the change in the log wage. -/
theorem wageChangeIdentity
    (laborShare productivity displacement dI dlnW dlnR : ℝ)
    (hAggregate :
      laborShare * dlnW + (1 - laborShare) * dlnR = productivity * dI)
    (hRelative : dlnW - dlnR = -displacement * dI) :
    dlnW = (productivity - (1 - laborShare) * displacement) * dI := by
  have hRental : dlnR = dlnW + displacement * dI := by
    linarith
  calc
    dlnW = laborShare * dlnW +
        (1 - laborShare) * (dlnW + displacement * dI) -
        (1 - laborShare) * displacement * dI := by ring
    _ = productivity * dI - (1 - laborShare) * displacement * dI := by
      rw [← hRental, hAggregate]
    _ = (productivity - (1 - laborShare) * displacement) * dI := by ring

/-- With a strictly positive automation increment, the sign of the wage
change is the sign of productivity net of displacement. -/
theorem wageChangePositiveIff
    (laborShare productivity displacement dI : ℝ)
    (hAutomation : 0 < dI) :
    0 < (productivity - (1 - laborShare) * displacement) * dI ↔
      (1 - laborShare) * displacement < productivity := by
  constructor
  · intro hWage
    rcases (mul_pos_iff.mp hWage) with hPos | hNeg
    · exact sub_pos.mp hPos.1
    · exact (not_lt_of_ge (le_of_lt hAutomation) hNeg.2).elim
  · intro hNet
    exact mul_pos (sub_pos.mpr hNet) hAutomation

/-- Algebraic wage component of Proposition 3 under technology-constrained
automation and `dN = 0`. -/
theorem propositionThreeWageEffect
    (laborShare productivity displacement dI dlnW dlnR : ℝ)
    (_hLaborSharePos : 0 < laborShare)
    (_hLaborShareLtOne : laborShare < 1)
    (_hProductivity : 0 < productivity)
    (_hDisplacement : 0 < displacement)
    (hAutomation : 0 < dI)
    (hAggregate :
      laborShare * dlnW + (1 - laborShare) * dlnR = productivity * dI)
    (hRelative : dlnW - dlnR = -displacement * dI) :
    dlnW = (productivity - (1 - laborShare) * displacement) * dI ∧
      (0 < dlnW ↔ (1 - laborShare) * displacement < productivity) := by
  have hIdentity := wageChangeIdentity laborShare productivity displacement dI dlnW dlnR
    hAggregate hRelative
  constructor
  · exact hIdentity
  · rw [hIdentity]
    exact wageChangePositiveIff laborShare productivity displacement dI hAutomation

end AR18RaceManMachine
