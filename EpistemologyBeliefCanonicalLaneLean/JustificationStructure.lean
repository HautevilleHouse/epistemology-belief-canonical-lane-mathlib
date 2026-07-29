import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyBeliefCanonicalLaneLean

structure JustificationPackage (A : EpistemicAdmissibleClass) where
  justificationType : Type
  coherence : Prop
  foundational : Prop
  inferential : Prop

def JustificationClosed (J : JustificationPackage A) : Prop :=
  J.coherence ∧ J.foundational ∧ J.inferential

theorem justification_closed_iff (J : JustificationPackage A) : JustificationClosed J ↔ J.coherence ∧ J.foundational ∧ J.inferential := by
  rfl

end EpistemologyBeliefCanonicalLaneLean
end HautevilleHouse