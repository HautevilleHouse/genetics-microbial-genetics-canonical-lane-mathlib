import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMicrobialGeneticsCanonicalLaneLean

structure PopulationGeneticsPackage where
  populationSize : Nat
  mutationRate : Float
  selectionCoefficient : Float
  alleleDiversity : Float
  hardyWeinbergEquilibrium : Prop

structure PopulationGeneticsEvidence (P : PopulationGeneticsPackage) where
  hardyWeinbergEquilibriumClosed : P.hardyWeinbergEquilibrium
  positiveDiversity : P.alleleDiversity > 0.0

def PopulationGeneticsClosed (P : PopulationGeneticsPackage) : Prop :=
  P.hardyWeinbergEquilibrium

theorem population_genetics_closed_from_evidence (P : PopulationGeneticsPackage)
    (E : PopulationGeneticsEvidence P) : PopulationGeneticsClosed P :=
  E.hardyWeinbergEquilibriumClosed

end GeneticsMicrobialGeneticsCanonicalLaneLean
end HautevilleHouse