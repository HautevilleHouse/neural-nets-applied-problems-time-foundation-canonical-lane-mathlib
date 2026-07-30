import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean

structure Backpropagation where
  forwardPass : Prop
  lossComputation : Prop
  gradientComputation : Prop
  weightUpdateRule : Prop
  forwardPassTerm : forwardPass
  lossComputationTerm : lossComputation
  gradientComputationTerm : gradientComputation
  weightUpdateRuleTerm : weightUpdateRule

structure BackpropagationEvidence (B : Backpropagation) where
  forwardPassClosed : B.forwardPass
  lossComputationClosed : B.lossComputation
  gradientComputationClosed : B.gradientComputation
  weightUpdateRuleClosed : B.weightUpdateRule

def BackpropagationClosed (B : Backpropagation) : Prop :=
  B.forwardPass ∧ B.lossComputation ∧ B.gradientComputation ∧ B.weightUpdateRule

theorem backpropagation_closed_from_evidence (B : Backpropagation)
    (E : BackpropagationEvidence B) : BackpropagationClosed B := by
  exact And.intro E.forwardPassClosed
    (And.intro E.lossComputationClosed
      (And.intro E.gradientComputationClosed E.weightUpdateRuleClosed))

end NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean
end HautevilleHouse
