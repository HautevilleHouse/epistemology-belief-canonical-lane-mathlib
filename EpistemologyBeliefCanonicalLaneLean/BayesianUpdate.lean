import EpistemologyBeliefCanonicalLaneLean.BeliefRevision

namespace HautevilleHouse
namespace EpistemologyBeliefCanonicalLaneLean

structure BayesianUpdatePackage (B : BeliefRevisionProcess) where
  prior : Prop
  likelihood : B.evidenceStream → Prop → Prop
  posterior : Prop
  updateEquality : Prop

structure BayesianUpdateEvidence (B : BeliefRevisionProcess) (U : BayesianUpdatePackage B) where
  priorClosed : U.prior
  likelihoodClosed : ∀ e : B.evidenceStream, ∀ p : Prop, U.likelihood e p → U.likelihood e p
  posteriorClosed : U.posterior
  updateEqualityClosed : U.updateEquality

def BayesianUpdateClosed (B : BeliefRevisionProcess) (U : BayesianUpdatePackage B) : Prop :=
  U.prior ∧ U.posterior ∧ U.updateEquality

theorem bayesian_update_closed (B : BeliefRevisionProcess) (U : BayesianUpdatePackage B)
    (E : BayesianUpdateEvidence B U) : BayesianUpdateClosed B U := by
  exact And.intro E.priorClosed (And.intro E.posteriorClosed E.updateEqualityClosed)

end EpistemologyBeliefCanonicalLaneLean
end HautevilleHouse