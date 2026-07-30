import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean

structure ApproximationTheorem where
  targetFunctionClass : String
  networkWidth : Nat
  depth : Nat
  uniformApproximationBound : Prop
  boundHolds : Prop
  boundHoldsTerm : boundHolds

def ApproximationTheoremClosed (A : ApproximationTheorem) : Prop :=
  A.boundHolds

end NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean
end HautevilleHouse
