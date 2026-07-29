import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyBeliefCanonicalLaneLean

structure EvidenceTrackingPackage (A : EpistemicAdmissibleClass) where
  evidenceSpace : Type
  updateRule : Type
  coherenceWithEvidence : Prop
  cumulativeEvidence : Prop

def EvidenceTrackingClosed (E : EvidenceTrackingPackage A) : Prop :=
  E.coherenceWithEvidence ∧ E.cumulativeEvidence

theorem evidence_tracking_closed_iff (E : EvidenceTrackingPackage A) : EvidenceTrackingClosed E ↔ E.coherenceWithEvidence ∧ E.cumulativeEvidence := by
  rfl

end EpistemologyBeliefCanonicalLaneLean
end HautevilleHouse