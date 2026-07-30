import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean

structure NeuralNetTimeObject where
  architecture : Type
  timeDomain : Type
  lossFunction : Type
  architectureProperties : Prop
  convergenceProperties : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : NeuralNetTimeObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NeuralNetTimeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def NeuralNetTimeClosed (O : NeuralNetTimeObject) : Prop :=
  O.convergenceProperties

end NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean
end HautevilleHouse