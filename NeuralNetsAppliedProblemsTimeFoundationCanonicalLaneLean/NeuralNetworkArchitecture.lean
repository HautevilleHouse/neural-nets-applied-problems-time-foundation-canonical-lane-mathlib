import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean

structure NeuralNetworkArchitecture where
  layerTypes : List Type
  activationFunctions : List (Type → Type)
  forwardPass : Prop
  backpropagation : Prop
  lossFunction : Type → Prop

structure NeuralNetworkArchitectureEvidence (A : NeuralNetworkArchitecture) where
  forwardPassClosed : A.forwardPass
  backpropagationClosed : A.backpropagation
  lossFunctionDefined : Prop

def NeuralNetworkArchitectureClosed (A : NeuralNetworkArchitecture) : Prop :=
  A.forwardPass ∧ A.backpropagation ∧ A.lossFunction (A.layerTypes)

theorem neural_network_architecture_closed_from_evidence (A : NeuralNetworkArchitecture)
    (E : NeuralNetworkArchitectureEvidence A) : NeuralNetworkArchitectureClosed A := by
  exact And.intro E.forwardPassClosed (And.intro E.backpropagationClosed E.lossFunctionDefined)

end NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean
end HautevilleHouse
