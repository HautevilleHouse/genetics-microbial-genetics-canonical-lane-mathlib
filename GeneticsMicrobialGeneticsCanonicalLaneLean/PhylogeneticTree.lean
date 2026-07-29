import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMicrobialGeneticsCanonicalLaneLean

structure PhylogeneticTreePackage where
  taxa : List String
  distanceMatrix : Array (Array ℝ)
  treeTopology : Type u
  branchLengths : Array ℝ
  treeLikelihood : Prop

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  distanceMatrixSymmetric : ∀ i j, P.distanceMatrix[i][j] = P.distanceMatrix[j][i]
  treeLikelihoodComputed : P.treeLikelihood

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.treeLikelihood

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence P) : PhylogeneticTreeClosed P := by
  exact E.treeLikelihoodComputed

end GeneticsMicrobialGeneticsCanonicalLaneLean
end HautevilleHouse