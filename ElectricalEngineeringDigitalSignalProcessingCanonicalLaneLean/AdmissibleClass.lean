import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean

structure DSPAdmittedObject where
  signal : Type u
  system : Type v
  conclusion : Prop

structure AdmissibleClass where
  object : DSPAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean
end HautevilleHouse