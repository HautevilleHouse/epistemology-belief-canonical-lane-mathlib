import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyBeliefCanonicalLaneLean

structure BeliefDynamicsPackage (A : AdmissibleClass) where
  updatingRule : Type u
  evidenceIntegration : Prop
  coherenceConstraint : Prop
  revisionOperator : Prop
  evidenceIntegrationClosed : evidenceIntegration
  coherenceConstraintClosed : coherenceConstraint
  revisionOperatorClosed : revisionOperator

structure BeliefDynamicsEvidence (A : AdmissibleClass) (B : BeliefDynamicsPackage A) where
  evidenceIntegrationClosed : B.evidenceIntegration
  coherenceConstraintClosed : B.coherenceConstraint
  revisionOperatorClosed : B.revisionOperator

def BeliefDynamicsClosed (A : AdmissibleClass) (B : BeliefDynamicsPackage A) : Prop :=
  B.evidenceIntegration ∧ B.coherenceConstraint ∧ B.revisionOperator

theorem belief_dynamics_closed_from_evidence (A : AdmissibleClass) (B : BeliefDynamicsPackage A)
    (E : BeliefDynamicsEvidence A B) : BeliefDynamicsClosed A B := by
  exact And.intro E.evidenceIntegrationClosed
    (And.intro E.coherenceConstraintClosed E.revisionOperatorClosed)

end EpistemologyBeliefCanonicalLaneLean
end HautevilleHouse