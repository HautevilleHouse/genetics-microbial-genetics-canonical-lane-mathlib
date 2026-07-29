import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMicrobialGeneticsCanonicalLaneLean

structure SequenceAlignmentPackage where
  sequence1 : String
  sequence2 : String
  alignmentScore : Int
  gapPenalty : Int
  matchScore : Int
  mismatchScore : Int

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.alignmentScore = max (S.matchScore - 2 * S.gapPenalty) 0

theorem sequence_alignment_bridge (S : SequenceAlignmentPackage) : SequenceAlignmentClosed S := by
  simpa [SequenceAlignmentClosed] using rfl

end GeneticsMicrobialGeneticsCanonicalLaneLean
end HautevilleHouse
