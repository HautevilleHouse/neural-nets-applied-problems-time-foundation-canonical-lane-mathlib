import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean

structure NeuralNetworkModel where
  inputDimension : Nat
  hiddenLayers : List Nat
  activationFunction : String
  weightsBiases : Type
  forwardPass : Prop
  forwardPassTerm : forwardPass

def NeuralNetworkModelClosed (M : NeuralNetworkModel) : Prop :=
  M.forwardPass

end NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean
end HautevilleHouse
