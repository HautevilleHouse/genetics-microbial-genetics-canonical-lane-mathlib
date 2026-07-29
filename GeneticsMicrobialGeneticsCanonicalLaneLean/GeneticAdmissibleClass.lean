import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMicrobialGeneticsCanonicalLaneLean

structure GeneticAdmittedObject where
  population : Type
  alleles : List String
  hardyWeinbergEquilibrium : Prop
  linkageEquilibrium : Prop
  mutationRate : Nat
  recombinationRate : Nat
  fitnessValues : List Float
  conclusion : hardyWeinbergEquilibrium ∧ linkageEquilibrium

structure AdmissibleClass where
  object : GeneticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.hardyWeinbergEquilibrium ∧ A.object.linkageEquilibrium) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeneticsMicrobialGeneticsCanonicalLaneLean
end HautevilleHouse
