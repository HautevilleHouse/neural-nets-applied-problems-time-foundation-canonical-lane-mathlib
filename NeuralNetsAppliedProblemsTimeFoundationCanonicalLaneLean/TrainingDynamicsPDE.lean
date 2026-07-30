import HautevilleHouse.NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean.NeuralNetTimeFoundation

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean

structure TrainingDynamicsPDEPackage (F : NeuralNetTimeFoundation) where
  gradientFlowEquation : Prop
  timeDiscretization : Prop
  stochasticGradientNoise : Prop
  lossLandscapeRegularity : Prop

structure TrainingDynamicsPDEEvidence {F : NeuralNetTimeFoundation}
    (T : TrainingDynamicsPDEPackage F) where
  gradientFlowEquationClosed : T.gradientFlowEquation
  timeDiscretizationClosed : T.timeDiscretization
  stochasticGradientNoiseClosed : T.stochasticGradientNoise
  lossLandscapeRegularityClosed : T.lossLandscapeRegularity

def TrainingDynamicsPDEClosed {F : NeuralNetTimeFoundation}
    (T : TrainingDynamicsPDEPackage F) : Prop :=
  T.gradientFlowEquation ∧ T.timeDiscretization ∧ T.stochasticGradientNoise ∧ T.lossLandscapeRegularity

theorem training_dynamics_pde_closed_from_evidence
    {F : NeuralNetTimeFoundation} (T : TrainingDynamicsPDEPackage F)
    (E : TrainingDynamicsPDEEvidence T) : TrainingDynamicsPDEClosed T := by
  exact And.intro E.gradientFlowEquationClosed
    (And.intro E.timeDiscretizationClosed
      (And.intro E.stochasticGradientNoiseClosed E.lossLandscapeRegularityClosed))

end NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean
end HautevilleHouse