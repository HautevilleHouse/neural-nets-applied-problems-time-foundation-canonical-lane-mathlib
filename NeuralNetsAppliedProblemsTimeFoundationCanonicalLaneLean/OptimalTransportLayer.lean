import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean

structure OptimalTransportLayer where
  sourceDistribution : Type → ℝ
  targetDistribution : Type → ℝ
  costFunction : Type → Type → ℝ
  wassersteinDistance : ℝ
  transportMap : Type → Type

structure OptimalTransportLayerEvidence (O : OptimalTransportLayer) where
  wassersteinDistanceClosed : O.wassersteinDistance > 0
  transportMapClosed : Prop

def OptimalTransportLayerClosed (O : OptimalTransportLayer) : Prop :=
  O.wassersteinDistance > 0 ∧ O.transportMapClosed

theorem optimal_transport_layer_closed_from_evidence (O : OptimalTransportLayer)
    (E : OptimalTransportLayerEvidence O) : OptimalTransportLayerClosed O := by
  exact And.intro E.wassersteinDistanceClosed E.transportMapClosed

end NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean
end HautevilleHouse
