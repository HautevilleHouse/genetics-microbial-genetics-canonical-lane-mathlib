import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMicrobialGeneticsCanonicalLaneLean

structure GeneticsMicrobialAdmittedObject where
  genome : Type
  sequenceAlignment : Prop
  phylogeneticTree : Prop
  hardyWeinbergEquilibrium : Prop
  linkageAnalysis : Prop
  conclusion : hardyWeinbergEquilibrium ∧ linkageAnalysis ∧ phylogeneticTree ∧ sequenceAlignment

def GeneticsMicrobialWitnessClosed (O : GeneticsMicrobialAdmittedObject) : Prop :=
  O.hardyWeinbergEquilibrium ∧ O.linkageAnalysis ∧ O.phylogeneticTree ∧ O.sequenceAlignment

end GeneticsMicrobialGeneticsCanonicalLaneLean
end HautevilleHouse
