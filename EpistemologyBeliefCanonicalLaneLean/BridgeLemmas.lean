import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyBeliefCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.justification

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EpistemologyBeliefCanonicalLaneLean
end HautevilleHouse