import EpistemologyBeliefCanonicalLaneLean.JustificationStructure

namespace HautevilleHouse
namespace EpistemologyBeliefCanonicalLaneLean

structure SkepticismPackage (J : JustificationStructure) where
  doubtThreshold : Prop
  fallibilityBound : Prop
  skepticResilience : Prop

structure SkepticismEvidence (J : JustificationStructure) (S : SkepticismPackage J) where
  doubtThresholdClosed : S.doubtThreshold
  fallibilityBoundClosed : S.fallibilityBound
  skepticResilienceClosed : S.skepticResilience

def SkepticismClosed (J : JustificationStructure) (S : SkepticismPackage J) : Prop :=
  S.doubtThreshold ∧ S.fallibilityBound ∧ S.skepticResilience

theorem skepticism_closed (J : JustificationStructure) (S : SkepticismPackage J)
    (E : SkepticismEvidence J S) : SkepticismClosed J S := by
  exact And.intro E.doubtThresholdClosed (And.intro E.fallibilityBoundClosed E.skepticResilienceClosed)

end EpistemologyBeliefCanonicalLaneLean
end HautevilleHouse