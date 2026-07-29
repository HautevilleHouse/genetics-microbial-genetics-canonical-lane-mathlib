import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeneticsMicrobialGeneticsCanonicalLaneLean.HardyWeinbergBridge
import HautevilleHouse.GeneticsMicrobialGeneticsCanonicalLaneLean.GeneticAdmissibleClass

namespace HautevilleHouse
namespace GeneticsMicrobialGeneticsCanonicalLaneLean

def ConstrainedGeneticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_genetic_endgame (A : AdmissibleClass) : ConstrainedGeneticClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeneticsMicrobialGeneticsCanonicalLaneLean
end HautevilleHouse
