import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NeuralNetWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NeuralNetsAppliedProblemsTimeFoundationCanonicalLaneLean
end HautevilleHouse
