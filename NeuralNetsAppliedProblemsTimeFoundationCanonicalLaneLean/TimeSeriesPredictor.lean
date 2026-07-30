import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean

structure TimeSeriesPredictor where
  inputDim : Nat
  hiddenDim : Nat
  outputDim : Nat
  weightsInitialized : Prop
  forwardPassDefined : Prop
  weightsInitializedTerm : weightsInitialized
  forwardPassDefinedTerm : forwardPassDefined

structure TimeSeriesPredictorEvidence (P : TimeSeriesPredictor) where
  weightsInitializedClosed : P.weightsInitialized
  forwardPassDefinedClosed : P.forwardPassDefined

def TimeSeriesPredictorClosed (P : TimeSeriesPredictor) : Prop :=
  P.weightsInitialized ∧ P.forwardPassDefined

theorem time_series_predictor_closed_from_evidence (P : TimeSeriesPredictor)
    (E : TimeSeriesPredictorEvidence P) : TimeSeriesPredictorClosed P := by
  exact And.intro E.weightsInitializedClosed E.forwardPassDefinedClosed

end NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean
end HautevilleHouse
