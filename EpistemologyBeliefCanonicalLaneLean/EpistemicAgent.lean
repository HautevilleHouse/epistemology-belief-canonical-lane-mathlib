import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyBeliefCanonicalLaneLean

structure EpistemicAgentPackage (A : EpistemicAdmissibleClass) where
  agentIdentity : Type
  beliefsSet : Type
  epistemicState : Type
  rationality : Prop

def EpistemicAgentClosed (E : EpistemicAgentPackage A) : Prop :=
  E.rationality

theorem epistemic_agent_closed_iff (E : EpistemicAgentPackage A) : EpistemicAgentClosed E ↔ E.rationality := by
  constructor
  · intro h
    exact h
  · intro h
    exact h

end EpistemologyBeliefCanonicalLaneLean
end HautevilleHouse