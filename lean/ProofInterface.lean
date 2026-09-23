import AR18RaceManMachine.PaperInterface

/-!
# Proof Interface: The Race Between Man and Machine: Implications of Technology for Growth, Factor Shares and Employment

This file contains exact-type proof endpoints for the transparent propositions
in `PaperInterface.lean`. It is not a human semantic-review surface: one source
claim is reviewed once, against its expanded `...Spec : Prop` declaration.
-/

namespace AR18RaceManMachine

/-- Exact-type proof endpoint for the selected Proposition 3 specification. -/
theorem propositionThreeWageEffectProof : propositionThreeWageEffectSpec := by
  intro laborShare productivity displacement dI dlnW dlnR hLaborSharePos
    hLaborShareLtOne hProductivity hDisplacement hAutomation hAggregate hRelative
  exact propositionThreeWageEffect laborShare productivity displacement dI dlnW dlnR
    hLaborSharePos hLaborShareLtOne hProductivity hDisplacement hAutomation
    hAggregate hRelative

end AR18RaceManMachine
