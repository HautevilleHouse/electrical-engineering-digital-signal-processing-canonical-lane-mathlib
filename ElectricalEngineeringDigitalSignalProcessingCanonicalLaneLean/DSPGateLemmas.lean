import ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean.DSPBridgeLemmas

namespace HautevilleHouse
namespace ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean
end HautevilleHouse
