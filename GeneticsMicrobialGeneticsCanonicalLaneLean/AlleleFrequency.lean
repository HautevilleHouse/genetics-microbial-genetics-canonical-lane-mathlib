import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMicrobialGeneticsCanonicalLaneLean

structure AlleleFrequencyPackage where
  locusCount : Nat
  alleleCount : Nat
  hardyWeinbergEquilibrium : Prop
  alleleFrequencies : Array Float
  genotypeFrequencies : Array Float

structure AlleleFrequencyEvidence (A : AlleleFrequencyPackage) where
  hardyWeinbergEquilibriumClosed : A.hardyWeinbergEquilibrium
  freqSumToOne : (A.alleleFrequencies.foldl (· + ·) 0.0) = 1.0

def AlleleFrequencyClosed (A : AlleleFrequencyPackage) : Prop :=
  A.hardyWeinbergEquilibrium

theorem allele_frequency_closed_from_evidence (A : AlleleFrequencyPackage)
    (E : AlleleFrequencyEvidence A) : AlleleFrequencyClosed A :=
  E.hardyWeinbergEquilibriumClosed

end GeneticsMicrobialGeneticsCanonicalLaneLean
end HautevilleHouse