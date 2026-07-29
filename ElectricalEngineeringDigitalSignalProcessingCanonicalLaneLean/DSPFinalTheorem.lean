import ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean.DSPGateLemmas

namespace HautevilleHouse
namespace ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def ConstrainedDSPClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dsp_endgame (A : AdmissibleClass) : ConstrainedDSPClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean
end HautevilleHouse
