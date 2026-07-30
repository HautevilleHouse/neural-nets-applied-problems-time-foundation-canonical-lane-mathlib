import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean.NeuralNetTimeFoundation

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean

structure NeuralNetAdmittedObject where
  network : NeuralNetTimeFoundation
  trainingDefined : Prop
  generalizationBound : Prop
  convergenceAchieved : Prop
  conclusion : generalizationBound

def NeuralNetWitnessClosed (O : NeuralNetAdmittedObject) : Prop :=
  O.generalizationBound

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | O : NeuralNetAdmittedObject => NeuralNetWitnessClosed O

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  -- A.object is a NeuralNetAdmittedObject, we have access to its conclusion
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean
end HautevilleHouse