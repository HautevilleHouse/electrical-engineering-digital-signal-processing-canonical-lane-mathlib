import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean.FourierAnalysis
import HautevilleHouse.ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean.SamplingTheorem
import HautevilleHouse.ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean.FilterDesign
import HautevilleHouse.ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean.WaveletTransform

namespace HautevilleHouse
namespace ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedDSPClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dsp_endgame (A : AdmissibleClass) :
    ConstrainedDSPClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean
end HautevilleHouse