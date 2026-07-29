import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMicrobialGeneticsCanonicalLaneLean

structure PhagePopulationPackage where
  bacterialStrain : Type u
  phageSpecies : Type v
  infectionRate : ℝ
  mutationRate : ℝ
  populationEquilibrium : Prop
  resistanceEmergence : Prop

structure PhagePopulationEvidence (P : PhagePopulationPackage) where
  infectionRatePositive : P.infectionRate > 0
  mutationRatePositive : P.mutationRate > 0
  populationEquilibriumReached : P.populationEquilibrium
  resistanceEmergenceObserved : P.resistanceEmergence

def PhagePopulationClosed (P : PhagePopulationPackage) : Prop :=
  P.populationEquilibrium ∧ P.resistanceEmergence

theorem phage_population_closed_from_evidence (P : PhagePopulationPackage) (E : PhagePopulationEvidence P) : PhagePopulationClosed P := by
  exact And.intro E.populationEquilibriumReached E.resistanceEmergenceObserved

end GeneticsMicrobialGeneticsCanonicalLaneLean
end HautevilleHouse