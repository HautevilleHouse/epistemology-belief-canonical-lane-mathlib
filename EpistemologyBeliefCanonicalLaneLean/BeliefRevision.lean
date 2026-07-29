import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyBeliefCanonicalLaneLean

structure BeliefRevisionPackage (A : EpistemicAdmissibleClass) where
  revisionOperator : Type
  consistencyPreservation : Prop
  minimalChange : Prop
  successCondition : Prop

def BeliefRevisionClosed (B : BeliefRevisionPackage A) : Prop :=
  B.consistencyPreservation ∧ B.minimalChange ∧ B.successCondition

theorem belief_revision_closed_iff (B : BeliefRevisionPackage A) : BeliefRevisionClosed B ↔ B.consistencyPreservation ∧ B.minimalChange ∧ B.successCondition := by
  rfl

end EpistemologyBeliefCanonicalLaneLean
end HautevilleHouse