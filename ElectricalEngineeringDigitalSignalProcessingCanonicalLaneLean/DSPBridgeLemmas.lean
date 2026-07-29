import ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean.DSPAdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DSPWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean
end HautevilleHouse
