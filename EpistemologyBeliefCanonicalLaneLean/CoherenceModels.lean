import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyBeliefCanonicalLaneLean

structure CoherenceModelPackage {J : BasicJustificationPackage}
    {R : BeliefRevisionPackage J} where
  constraints : Prop
  explanatoryRelations : Prop
  stableSet : Prop
  coherenceMeasure : Prop

structure CoherenceModelEvidence {J : BasicJustificationPackage}
    {R : BeliefRevisionPackage J} (C : CoherenceModelPackage J R) where
  constraintsClosed : C.constraints
  explanatoryRelationsClosed : C.explanatoryRelations
  stableSetClosed : C.stableSet
  coherenceMeasureClosed : C.coherenceMeasure

def CoherenceModelClosed {J : BasicJustificationPackage}
    {R : BeliefRevisionPackage J} (C : CoherenceModelPackage J R) : Prop :=
  C.constraints ∧ C.explanatoryRelations ∧ C.stableSet ∧ C.coherenceMeasure

theorem coherence_model_closed_from_evidence {J : BasicJustificationPackage}
    {R : BeliefRevisionPackage J} (C : CoherenceModelPackage J R)
    (E : CoherenceModelEvidence C) : CoherenceModelClosed C := by
  exact And.intro E.constraintsClosed
    (And.intro E.explanatoryRelationsClosed
      (And.intro E.stableSetClosed E.coherenceMeasureClosed))

end EpistemologyBeliefCanonicalLaneLean
end HautevilleHouse