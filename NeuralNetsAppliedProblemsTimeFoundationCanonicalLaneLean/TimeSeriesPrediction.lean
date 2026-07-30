import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean

structure TimeSeriesPrediction where
  sequenceLength : ℕ
  inputDimension : ℕ
  outputDimension : ℕ
  recurrenceRelation : Prop
  backpropagationThroughTime : Prop
  trainingAlgorithm : Prop

structure TimeSeriesPredictionEvidence (T : TimeSeriesPrediction) where
  recurrenceRelationClosed : T.recurrenceRelation
  backpropagationThroughTimeClosed : T.backpropagationThroughTime
  trainingAlgorithmClosed : T.trainingAlgorithm

def TimeSeriesPredictionClosed (T : TimeSeriesPrediction) : Prop :=
  T.recurrenceRelation ∧ T.backpropagationThroughTime ∧ T.trainingAlgorithm

theorem time_series_prediction_closed_from_evidence (T : TimeSeriesPrediction)
    (E : TimeSeriesPredictionEvidence T) : TimeSeriesPredictionClosed T := by
  exact And.intro E.recurrenceRelationClosed (And.intro E.backpropagationThroughTimeClosed E.trainingAlgorithmClosed)

end NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean
end HautevilleHouse
