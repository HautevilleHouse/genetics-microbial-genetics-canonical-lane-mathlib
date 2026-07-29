import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMicrobialGeneticsCanonicalLaneLean

structure HorizontalGeneTransferPackage where
  donorGenome : String
  recipientGenome : String
  transferredRegion : String
  integrationSite : String
  hgtDetected : Prop

structure HorizontalGeneTransferEvidence (H : HorizontalGeneTransferPackage) where
  hgtDetectedClosed : H.hgtDetected
  regionNonempty : H.transferredRegion.length > 0

def HorizontalGeneTransferClosed (H : HorizontalGeneTransferPackage) : Prop :=
  H.hgtDetected

theorem horizontal_gene_transfer_closed_from_evidence (H : HorizontalGeneTransferPackage)
    (E : HorizontalGeneTransferEvidence H) : HorizontalGeneTransferClosed H :=
  E.hgtDetectedClosed

end GeneticsMicrobialGeneticsCanonicalLaneLean
end HautevilleHouse