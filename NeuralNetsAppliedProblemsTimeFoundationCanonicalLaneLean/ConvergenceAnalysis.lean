import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean

structure ConvergenceAnalysis where
  lossFunctionDefined : Prop
  learningRateSchedule : Prop
  convergenceRate : Prop
  stationaryPointReached : Prop
  lossFunctionDefinedTerm : lossFunctionDefined
  learningRateScheduleTerm : learningRateSchedule
  convergenceRateTerm : convergenceRate
  stationaryPointReachedTerm : stationaryPointReached

structure ConvergenceAnalysisEvidence (C : ConvergenceAnalysis) where
  lossFunctionDefinedClosed : C.lossFunctionDefined
  learningRateScheduleClosed : C.learningRateSchedule
  convergenceRateClosed : C.convergenceRate
  stationaryPointReachedClosed : C.stationaryPointReached

def ConvergenceAnalysisClosed (C : ConvergenceAnalysis) : Prop :=
  C.lossFunctionDefined ∧ C.learningRateSchedule ∧ C.convergenceRate ∧ C.stationaryPointReached

theorem convergence_analysis_closed_from_evidence (C : ConvergenceAnalysis)
    (E : ConvergenceAnalysisEvidence C) : ConvergenceAnalysisClosed C := by
  exact And.intro E.lossFunctionDefinedClosed
    (And.intro E.learningRateScheduleClosed
      (And.intro E.convergenceRateClosed E.stationaryPointReachedClosed))

end NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean
end HautevilleHouse
