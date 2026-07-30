import NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean

structure LossLandscapePackage (A : AdmissibleClass) where
  hessianPositiveDefinite : Prop
  noBadLocalMinima : Prop
  gradientFlowConverges : Prop

structure LossLandscapeEvidence (A : AdmissibleClass) (L : LossLandscapePackage A) where
  hessianPositiveDefiniteClosed : L.hessianPositiveDefinite
  noBadLocalMinimaClosed : L.noBadLocalMinima
  gradientFlowConvergesClosed : L.gradientFlowConverges

def LossLandscapeClosed (A : AdmissibleClass) (L : LossLandscapePackage A) : Prop :=
  L.hessianPositiveDefinite ∧ L.noBadLocalMinima ∧ L.gradientFlowConverges

theorem loss_landscape_closed_from_evidence (A : AdmissibleClass) (L : LossLandscapePackage A)
    (E : LossLandscapeEvidence A L) : LossLandscapeClosed A L := by
  exact And.intro E.hessianPositiveDefiniteClosed
    (And.intro E.noBadLocalMinimaClosed E.gradientFlowConvergesClosed)

end NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean
end HautevilleHouse