import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMicrobialGeneticsCanonicalLaneLean

structure SequenceAlignmentPackage where
  referenceGenome : Type u
  queryGenome : Type v
  alignmentScore : Prop
  gapPenalty : Prop
  matchReward : Prop
  optimalAlignment : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  alignmentScoreDefined : S.alignmentScore
  gapPenaltyDefined : S.gapPenalty
  matchRewardDefined : S.matchReward
  optimalAlignmentExists : S.optimalAlignment

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.alignmentScore ∧ S.gapPenalty ∧ S.matchReward ∧ S.optimalAlignment

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage) (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S := by
  exact And.intro E.alignmentScoreDefined (And.intro E.gapPenaltyDefined (And.intro E.matchRewardDefined E.optimalAlignmentExists))

end GeneticsMicrobialGeneticsCanonicalLaneLean
end HautevilleHouse