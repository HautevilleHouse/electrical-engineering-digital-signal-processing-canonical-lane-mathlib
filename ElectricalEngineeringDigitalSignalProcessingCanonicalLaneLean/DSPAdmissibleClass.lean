import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DSPSignal where
  carrierType : Type
  timeDomain : Type
  valueType : Type
  isDiscreteTime : Prop
  isFiniteLength : Prop
  samplingRate : ℕ

structure DSPAdmittedObject where
  signal : DSPSignal
  bandlimited : Prop
  bandwidth : ℝ
  conclusion : bandlimited

def DSPWitnessClosed (O : DSPAdmittedObject) : Prop :=
  O.bandlimited

end ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean
end HautevilleHouse
