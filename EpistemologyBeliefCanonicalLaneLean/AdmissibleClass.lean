import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyBeliefCanonicalLaneLean

structure BeliefAdmittedObject where
  proposition : Prop
  justification : Prop
  conclusion : justification

structure AdmissibleClass where
  object : BeliefAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.justification ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EpistemologyBeliefCanonicalLaneLean
end HautevilleHouse