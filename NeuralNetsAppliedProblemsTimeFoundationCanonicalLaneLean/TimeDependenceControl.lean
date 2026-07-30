import NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean.LossLandscapeGeometry

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean

structure TimeDependencePackage (A : AdmissibleClass) (L : LossLandscapePackage A) where
  timeDiscretized : Prop
  gradientIterationsFinite : Prop
  convergenceRate : Prop

structure TimeDependenceEvidence (A : AdmissibleClass) (L : LossLandscapePackage A)
    (T : TimeDependencePackage A L) where
  timeDiscretizedClosed : T.timeDiscretized
  gradientIterationsFiniteClosed : T.gradientIterationsFinite
  convergenceRateClosed : T.convergenceRate

def TimeDependenceClosed (A : AdmissibleClass) (L : LossLandscapePackage A)
    (T : TimeDependencePackage A L) : Prop :=
  T.timeDiscretized ∧ T.gradientIterationsFinite ∧ T.convergenceRate

theorem time_dependence_closed_from_evidence (A : AdmissibleClass) (L : LossLandscapePackage A)
    (T : TimeDependencePackage A L) (E : TimeDependenceEvidence A L T) :
    TimeDependenceClosed A L T := by
  exact And.intro E.timeDiscretizedClosed
    (And.intro E.gradientIterationsFiniteClosed E.convergenceRateClosed)

end NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean
end HautevilleHouse