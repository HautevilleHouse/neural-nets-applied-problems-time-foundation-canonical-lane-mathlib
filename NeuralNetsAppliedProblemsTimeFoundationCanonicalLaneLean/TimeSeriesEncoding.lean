import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean

structure TimeSeriesEncodingPackage where
  inputDimension : Nat
  timeSteps : Nat
  encodingDimension : Nat
  positionalEncoding : Prop
  temporalAttention : Prop
  sequenceNormalization : Prop

structure TimeSeriesEncodingEvidence (E : TimeSeriesEncodingPackage) where
  positionalEncodingClosed : E.positionalEncoding
  temporalAttentionClosed : E.temporalAttention
  sequenceNormalizationClosed : E.sequenceNormalization

def TimeSeriesEncodingClosed (E : TimeSeriesEncodingPackage) : Prop :=
  E.positionalEncoding ∧ E.temporalAttention ∧ E.sequenceNormalization

theorem time_series_encoding_closed_from_evidence (E : TimeSeriesEncodingPackage)
    (Ev : TimeSeriesEncodingEvidence E) : TimeSeriesEncodingClosed E := by
  exact And.intro Ev.positionalEncodingClosed
    (And.intro Ev.temporalAttentionClosed Ev.sequenceNormalizationClosed)

end NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean
end HautevilleHouse