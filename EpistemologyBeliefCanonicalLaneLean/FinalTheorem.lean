import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyBeliefCanonicalLaneLean

def ConstrainedBeliefClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_belief_endgame (A : AdmissibleClass) :
    ConstrainedBeliefClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EpistemologyBeliefCanonicalLaneLean
end HautevilleHouse