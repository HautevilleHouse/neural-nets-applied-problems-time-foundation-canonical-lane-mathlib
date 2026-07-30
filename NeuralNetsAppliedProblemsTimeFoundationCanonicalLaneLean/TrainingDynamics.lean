import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean

structure TrainingDynamics where
  lossFunction : String
  optimizer : String
  learningRateSchedule : Prop
  convergenceGuarantee : Prop
  convergenceGuaranteeTerm : convergenceGuarantee

def TrainingDynamicsClosed (T : TrainingDynamics) : Prop :=
  T.convergenceGuarantee

end NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean
end HautevilleHouse
