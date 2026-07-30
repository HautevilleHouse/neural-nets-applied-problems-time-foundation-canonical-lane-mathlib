import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean

structure ResidualNetwork where
  skipConnections : Prop
  gradientFlowImproved : Prop
  depthScalable : Prop
  skipConnectionsTerm : skipConnections
  gradientFlowImprovedTerm : gradientFlowImproved
  depthScalableTerm : depthScalable

structure ResidualNetworkEvidence (R : ResidualNetwork) where
  skipConnectionsClosed : R.skipConnections
  gradientFlowImprovedClosed : R.gradientFlowImproved
  depthScalableClosed : R.depthScalable

def ResidualNetworkClosed (R : ResidualNetwork) : Prop :=
  R.skipConnections ∧ R.gradientFlowImproved ∧ R.depthScalable

theorem residual_network_closed_from_evidence (R : ResidualNetwork)
    (E : ResidualNetworkEvidence R) : ResidualNetworkClosed R := by
  exact And.intro E.skipConnectionsClosed
    (And.intro E.gradientFlowImprovedClosed E.depthScalableClosed)

end NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean
end HautevilleHouse
