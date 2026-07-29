import ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean.DSPAdmissibleClass
import Mathlib.Analysis.SpecialFunctions.Trigonometric
import Mathlib.MeasureTheory.Integral

namespace HautevilleHouse
namespace ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean

structure FourierTransformPackage where
  timeSignal : DSPSignal
  frequencyDomain : Type u
  transformPair : (timeSignal.carrierType → ℂ) → (frequencyDomain → ℂ)
  inversionFormula : Prop
  convolutionProperty : Prop
  parsevalIdentity : Prop

structure FourierTransformEvidence (F : FourierTransformPackage) where
  inversionFormulaClosed : F.inversionFormula
  convolutionPropertyClosed : F.convolutionProperty
  parsevalIdentityClosed : F.parsevalIdentity

def FourierTransformClosed (F : FourierTransformPackage) : Prop :=
  F.inversionFormula ∧ F.convolutionProperty ∧ F.parsevalIdentity

theorem fourier_transform_closed_from_evidence (F : FourierTransformPackage)
    (E : FourierTransformEvidence F) : FourierTransformClosed F := by
  exact And.intro E.inversionFormulaClosed
    (And.intro E.convolutionPropertyClosed E.parsevalIdentityClosed)

end ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean
end HautevilleHouse
