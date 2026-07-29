import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMicrobialGeneticsCanonicalLaneLean

structure LinkageAnalysisPackage where
  markerCount : Nat
  recombinationFraction : Float
  lodScore : Float
  linkagePresent : Prop

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  linkagePresentClosed : L.linkagePresent
  lodAboveThreshold : L.lodScore > 3.0

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.linkagePresent

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage)
    (E : LinkageAnalysisEvidence L) : LinkageAnalysisClosed L :=
  E.linkagePresentClosed

end GeneticsMicrobialGeneticsCanonicalLaneLean
end HautevilleHouse