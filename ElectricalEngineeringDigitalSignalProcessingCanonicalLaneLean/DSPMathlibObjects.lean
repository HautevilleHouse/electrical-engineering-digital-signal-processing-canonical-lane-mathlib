import ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DSPSignalSpace where
  signalType : Type
  topology : TopologicalSpace signalType

structure DSPAdmittedObject where
  space : DSPSignalSpace
  bandlimited : Prop
  finiteEnergy : Prop
  samplingRateModel : Type
  samplingTopology : TopologicalSpace samplingRateModel
  reconstructionPossible : Prop
  conclusion : reconstructionPossible

structure DSPEndgameState where
  object : DSPAdmittedObject

def DSPWitnessClosed (O : DSPAdmittedObject) : Prop :=
  O.reconstructionPossible

end ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean
end HautevilleHouse