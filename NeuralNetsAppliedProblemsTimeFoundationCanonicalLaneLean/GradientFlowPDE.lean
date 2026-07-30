import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean

structure GradientFlowPDE where
  timeParameter : Type u
  gradientField : Type v
  gradientFlowEquation : Prop
  initialCondition : Prop
  solutionExistence : Prop
  gradientFlowEquationTerm : gradientFlowEquation
  initialConditionTerm : initialCondition
  solutionExistenceTerm : solutionExistence

structure GradientFlowPDEEvidence (F : GradientFlowPDE) where
  gradientFlowEquationClosed : F.gradientFlowEquation
  initialConditionClosed : F.initialCondition
  solutionExistenceClosed : F.solutionExistence

def GradientFlowPDEClosed (F : GradientFlowPDE) : Prop :=
  F.gradientFlowEquation ∧ F.initialCondition ∧ F.solutionExistence

theorem gradient_flow_pde_closed_from_evidence (F : GradientFlowPDE)
    (E : GradientFlowPDEEvidence F) : GradientFlowPDEClosed F := by
  exact And.intro E.gradientFlowEquationClosed
    (And.intro E.initialConditionClosed E.solutionExistenceClosed)

end NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean
end HautevilleHouse
