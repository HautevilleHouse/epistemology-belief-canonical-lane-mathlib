import canonicalLaneMathlib.AdmissibleClass
import EpistemologyBeliefCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyBeliefCanonicalLaneLean

structure KnowledgeAxiomPackage (A : AdmissibleClass) where
  factivity : Prop
  positiveIntrospection : Prop
  negativeIntrospection : Prop
  distributionAxiom : Prop
  conjunctionAxiom : Prop

structure KnowledgeAxiomEvidence (A : AdmissibleClass) (K : KnowledgeAxiomPackage A) where
  factivityClosed : K.factivity
  positiveIntrospectionClosed : K.positiveIntrospection
  negativeIntrospectionClosed : K.negativeIntrospection
  distributionAxiomClosed : K.distributionAxiom
  conjunctionAxiomClosed : K.conjunctionAxiom

def KnowledgeAxiomClosed (A : AdmissibleClass) (K : KnowledgeAxiomPackage A) : Prop :=
  K.factivity ∧ K.positiveIntrospection ∧ K.negativeIntrospection ∧ K.distributionAxiom ∧ K.conjunctionAxiom

theorem knowledge_axiom_closed_from_evidence (A : AdmissibleClass) (K : KnowledgeAxiomPackage A) (E : KnowledgeAxiomEvidence A K) :
    KnowledgeAxiomClosed A K := by
  exact And.intro E.factivityClosed
    (And.intro E.positiveIntrospectionClosed
      (And.intro E.negativeIntrospectionClosed
        (And.intro E.distributionAxiomClosed E.conjunctionAxiomClosed)))

end EpistemologyBeliefCanonicalLaneLean
end HautevilleHouse