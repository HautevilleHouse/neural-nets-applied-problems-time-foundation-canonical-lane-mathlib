import HautevilleHouse.NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean.NeuralNetTimeFoundation

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean

structure GeneralizationBoundsPackage {F : NeuralNetTimeFoundation}
    (T : TrainingDynamicsPDEPackage F) where
  trainTestGapBound : Prop
  modelComplexityMeasure : Prop
  sampleComplexityBound : Prop
  stabilityMargin : Prop

structure GeneralizationBoundsEvidence {F : NeuralNetTimeFoundation}
    {T : TrainingDynamicsPDEPackage F} (G : GeneralizationBoundsPackage T) where
  trainTestGapBoundClosed : G.trainTestGapBound
  modelComplexityMeasureClosed : G.modelComplexityMeasure
  sampleComplexityBoundClosed : G.sampleComplexityBound
  stabilityMarginClosed : G.stabilityMargin

def GeneralizationBoundsClosed {F : NeuralNetTimeFoundation}
    {T : TrainingDynamicsPDEPackage F} (G : GeneralizationBoundsPackage T) : Prop :=
  G.trainTestGapBound ∧ G.modelComplexityMeasure ∧ G.sampleComplexityBound ∧ G.stabilityMargin

theorem generalization_bounds_closed_from_evidence
    {F : NeuralNetTimeFoundation} {T : TrainingDynamicsPDEPackage F}
    (G : GeneralizationBoundsPackage T) (E : GeneralizationBoundsEvidence G) :
    GeneralizationBoundsClosed G := by
  exact And.intro E.trainTestGapBoundClosed
    (And.intro E.modelComplexityMeasureClosed
      (And.intro E.sampleComplexityBoundClosed E.stabilityMarginClosed))

end NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean
end HautevilleHouse