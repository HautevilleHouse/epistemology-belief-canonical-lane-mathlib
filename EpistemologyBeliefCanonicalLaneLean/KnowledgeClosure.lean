import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyBeliefCanonicalLaneLean

structure KnowledgeClosurePackage (A : EpistemicAdmissibleClass) where
  closureUnderKnownEntailment : Prop
  closureUnderKnownImplication : Prop
  deductiveCogency : Prop

def KnowledgeClosureClosed (K : KnowledgeClosurePackage A) : Prop :=
  K.closureUnderKnownEntailment ∧ K.closureUnderKnownImplication ∧ K.deductiveCogency

theorem knowledge_closure_closed_iff (K : KnowledgeClosurePackage A) : KnowledgeClosureClosed K ↔ K.closureUnderKnownEntailment ∧ K.closureUnderKnownImplication ∧ K.deductiveCogency := by
  rfl

end EpistemologyBeliefCanonicalLaneLean
end HautevilleHouse