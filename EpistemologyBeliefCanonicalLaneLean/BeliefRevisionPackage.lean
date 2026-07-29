import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyBeliefCanonicalLaneLean

structure BeliefRevisionPackage {J : BasicJustificationPackage} where
  priorBelief : Prop
  newEvidence : Prop
  revisedBelief : Prop
  agmPostulates : Prop
  minimalChange : Prop

structure BeliefRevisionEvidence {J : BasicJustificationPackage}
    (R : BeliefRevisionPackage J) where
  agmPostulatesClosed : R.agmPostulates
  minimalChangeClosed : R.minimalChange

def BeliefRevisionClosed {J : BasicJustificationPackage}
    (R : BeliefRevisionPackage J) : Prop :=
  R.agmPostulates ∧ R.minimalChange

theorem belief_revision_closed_from_evidence {J : BasicJustificationPackage}
    (R : BeliefRevisionPackage J) (E : BeliefRevisionEvidence R) :
    BeliefRevisionClosed R := by
  exact And.intro E.agmPostulatesClosed E.minimalChangeClosed

end EpistemologyBeliefCanonicalLaneLean
end HautevilleHouse