import NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean.TimeDependenceControl

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean

structure EndpointClassificationPackage (A : AdmissibleClass) (L : LossLandscapePackage A)
    (T : TimeDependencePackage A L) where
  targetPerformance : Type
  convergenceToGlobal : Prop
  optimalityVerified : Prop

structure EndpointClassificationEvidence (A : AdmissibleClass) (L : LossLandscapePackage A)
    (T : TimeDependencePackage A L) (E : EndpointClassificationPackage A L T) where
  convergenceToGlobalClosed : E.convergenceToGlobal
  optimalityVerifiedClosed : E.optimalityVerified

def EndpointClassificationClosed (A : AdmissibleClass) (L : LossLandscapePackage A)
    (T : TimeDependencePackage A L) (E : EndpointClassificationPackage A L T) : Prop :=
  E.convergenceToGlobal ∧ E.optimalityVerified

theorem endpoint_classification_closed_from_evidence (A : AdmissibleClass) (L : LossLandscapePackage A)
    (T : TimeDependencePackage A L) (E : EndpointClassificationPackage A L T)
    (Ev : EndpointClassificationEvidence A L T E) : EndpointClassificationClosed A L T E := by
  exact And.intro Ev.convergenceToGlobalClosed Ev.optimalityVerifiedClosed

end NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean
end HautevilleHouse