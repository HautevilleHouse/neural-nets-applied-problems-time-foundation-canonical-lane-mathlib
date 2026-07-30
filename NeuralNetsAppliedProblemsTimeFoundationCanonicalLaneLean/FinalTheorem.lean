import NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean

def ConstrainedNeuralNetClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neural_net_endgame (A : AdmissibleClass) :
    ConstrainedNeuralNetClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean
end HautevilleHouse
