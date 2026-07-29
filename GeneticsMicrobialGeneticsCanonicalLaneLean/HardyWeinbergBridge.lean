import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeneticsMicrobialGeneticsCanonicalLaneLean.GeneticAdmissibleClass

namespace HautevilleHouse
namespace GeneticsMicrobialGeneticsCanonicalLaneLean

open HautevilleHouse.GeneticsMicrobialGeneticsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.hardyWeinbergEquilibrium ∧ A.object.linkageEquilibrium

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end GeneticsMicrobialGeneticsCanonicalLaneLean
end HautevilleHouse
