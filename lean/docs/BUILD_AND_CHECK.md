# Build and check record

Date: 2026-09-23

## Result

- `lake build +AR18RaceManMachine`: **passed** (`8317` jobs).
- `python3 scripts/paper_contribution.py check AR18RaceManMachine --fast`:
  **passed** with exit code `0`.
- The touched Lean files contain no `sorry`, `admit`, temporary `axiom`,
  `opaque`, or `native_decide` proof shortcuts.

## Verified scope

Lean verifies the algebraic wage component of Proposition 3 for
technology-constrained automation (`I* = I < I_tilde`) with `dN = 0`:

1. the aggregate factor-price equation and the relative factor-price equation
   imply
   `dlnW = (productivity - (1 - laborShare) * displacement) * dI`; and
2. for `dI > 0`, the wage rises exactly when
   `productivity > (1 - laborShare) * displacement`.

## Formalization boundary

This is a partial paper formalization. The two comparative-static equations are
explicit premises. The task production model, the differentiation that derives
those equations, positivity of the productivity formula from primitive price
inequalities, the capital-stock threshold result, the remaining clauses of
Proposition 3, and the paper's other named results remain outside the checked
scope.

The public source is NBER Working Paper 22252, revised June 2017. The selected
claim appears in Proposition 3 on printed pages 12--14 (PDF pages 14--16).
