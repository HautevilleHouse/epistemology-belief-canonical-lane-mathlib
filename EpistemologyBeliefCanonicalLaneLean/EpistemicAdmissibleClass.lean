import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyBeliefCanonicalLaneLean

structure EpistemicAdmittedObject where
  agent : Type
  belief : Prop
  justification : Prop
  truth : Prop
  knowledge : Prop

structure EpistemicAdmissibleClass where
  object : EpistemicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedEpistemicClosure (A : EpistemicAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

end EpistemologyBeliefCanonicalLaneLean
end HautevilleHouse