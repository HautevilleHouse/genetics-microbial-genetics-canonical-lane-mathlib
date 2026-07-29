import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMicrobialGeneticsCanonicalLaneLean

structure PhylogeneticsPackage where
  speciesCount : Nat
  treeTopology : Type
  branchLengths : List Float
  bootstrapSupport : List Float
  treeInferred : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  treeInferredClosed : P.treeInferred
  strongBootstrap : (P.bootstrapSupport.filter (· > 0.95)).length > P.speciesCount / 2

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.treeInferred

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage)
    (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P :=
  E.treeInferredClosed

end GeneticsMicrobialGeneticsCanonicalLaneLean
end HautevilleHouse