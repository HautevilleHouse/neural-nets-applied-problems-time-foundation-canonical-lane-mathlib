import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean

structure TimeEncoding where
  encodingType : Type u
  positionalEncoding : Prop
  temporalAwareness : Prop
  sequenceLengthAgnostic : Prop
  positionalEncodingTerm : positionalEncoding
  temporalAwarenessTerm : temporalAwareness
  sequenceLengthAgnosticTerm : sequenceLengthAgnostic

structure TimeEncodingEvidence (T : TimeEncoding) where
  positionalEncodingClosed : T.positionalEncoding
  temporalAwarenessClosed : T.temporalAwareness
  sequenceLengthAgnosticClosed : T.sequenceLengthAgnostic

def TimeEncodingClosed (T : TimeEncoding) : Prop :=
  T.positionalEncoding ∧ T.temporalAwareness ∧ T.sequenceLengthAgnostic

theorem time_encoding_closed_from_evidence (T : TimeEncoding)
    (E : TimeEncodingEvidence T) : TimeEncodingClosed T := by
  exact And.intro E.positionalEncodingClosed
    (And.intro E.temporalAwarenessClosed E.sequenceLengthAgnosticClosed)

end NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean
end HautevilleHouse
