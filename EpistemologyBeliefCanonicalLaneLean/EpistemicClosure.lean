import canonicalLaneMathlib.AdmissibleClass
import EpistemologyBeliefCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyBeliefCanonicalLaneLean

structure EpistemicClosureProperty (A : AdmissibleClass) where
  closedUnderLogicalConsequence : Prop
  closedUnderEvidence : Prop
  closedUnderIteration : Prop
  closureDeductionRule : Prop

structure EpistemicClosureEvidence (A : AdmissibleClass) (E : EpistemicClosureProperty A) where
  closedUnderLogicalConsequenceClosed : E.closedUnderLogicalConsequence
  closedUnderEvidenceClosed : E.closedUnderEvidence
  closedUnderIterationClosed : E.closedUnderIteration
  closureDeductionRuleClosed : E.closureDeductionRule

def EpistemicClosureClosed (A : AdmissibleClass) (E : EpistemicClosureProperty A) : Prop :=
  E.closedUnderLogicalConsequence ∧ E.closedUnderEvidence ∧ E.closedUnderIteration ∧ E.closureDeductionRule

theorem epistemic_closure_closed_from_evidence (A : AdmissibleClass) (E : EpistemicClosureProperty A) (Evi : EpistemicClosureEvidence A E) :
    EpistemicClosureClosed A E := by
  exact And.intro Evi.closedUnderLogicalConsequenceClosed
    (And.intro Evi.closedUnderEvidenceClosed
      (And.intro Evi.closedUnderIterationClosed Evi.closureDeductionRuleClosed))

end EpistemologyBeliefCanonicalLaneLean
end HautevilleHouse