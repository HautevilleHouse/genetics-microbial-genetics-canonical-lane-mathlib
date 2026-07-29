import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMicrobialGeneticsCanonicalLaneLean

structure HardyWeinbergPackage where
  population : Type u
  alleleFrequencies : population → ℝ × ℝ
  genotypeFrequencies : population → ℝ × ℝ × ℝ
  equilibriumCondition : Prop
  randomMating : Prop
  noEvolution : Prop

structure HardyWeinbergEquilibriumEvidence (P : HardyWeinbergPackage) where
  equilibriumConditionClosed : P.equilibriumCondition
  randomMatingClosed : P.randomMating
  noEvolutionClosed : P.noEvolution

def HardyWeinbergEquilibriumClosed (P : HardyWeinbergPackage) : Prop :=
  P.equilibriumCondition ∧ P.randomMating ∧ P.noEvolution

theorem hardy_weinberg_equilibrium_closed_from_evidence (P : HardyWeinbergPackage)
    (E : HardyWeinbergEquilibriumEvidence P) : HardyWeinbergEquilibriumClosed P :=
  And.intro E.equilibriumConditionClosed (And.intro E.randomMatingClosed E.noEvolutionClosed)

end GeneticsMicrobialGeneticsCanonicalLaneLean
end HautevilleHouse
