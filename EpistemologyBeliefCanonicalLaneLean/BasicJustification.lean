import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyBeliefCanonicalLaneLean

structure BasicJustificationPackage where
  believer : Type u
  proposition : Type v
  justificationRelation : believer → proposition → Prop
  truthTracking : Prop
  coherenceCondition : Prop

structure BasicJustificationEvidence (J : BasicJustificationPackage) where
  truthTrackingClosed : J.truthTracking
  coherenceConditionClosed : J.coherenceCondition

def BasicJustificationClosed (J : BasicJustificationPackage) : Prop :=
  J.truthTracking ∧ J.coherenceCondition

theorem basic_justification_closed_from_evidence (J : BasicJustificationPackage)
    (E : BasicJustificationEvidence J) : BasicJustificationClosed J := by
  exact And.intro E.truthTrackingClosed E.coherenceConditionClosed

end EpistemologyBeliefCanonicalLaneLean
end HautevilleHouse