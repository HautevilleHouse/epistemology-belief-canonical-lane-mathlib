import EpistemologyBeliefCanonicalLaneLean.EpistemicAdmissibleClass

namespace HautevilleHouse
namespace EpistemologyBeliefCanonicalLaneLean

def bridgeClosed (A : EpistemicAdmissibleClass) : Prop :=
  EpistemicWitnessClosed A.object

theorem bridge_from_admissible_class (A : EpistemicAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EpistemologyBeliefCanonicalLaneLean
end HautevilleHouse