import .AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean

structure FourierTransformPackage where
  continuousTransform : Type u → Type v
  discreteTransform : Type u → Type v
  linearity : Prop
  shiftTheorem : Prop
  convolutionTheorem : Prop
  parsevalIdentity : Prop

structure FourierTransformEvidence (F : FourierTransformPackage) where
  linearityClosed : F.linearity
  shiftTheoremClosed : F.shiftTheorem
  convolutionTheoremClosed : F.convolutionTheorem
  parsevalIdentityClosed : F.parsevalIdentity

def FourierTransformClosed (F : FourierTransformPackage) : Prop :=
  F.linearity ∧ F.shiftTheorem ∧ F.convolutionTheorem ∧ F.parsevalIdentity

theorem fourier_transform_closed_from_evidence (F : FourierTransformPackage)
    (E : FourierTransformEvidence F) : FourierTransformClosed F := by
  exact And.intro E.linearityClosed (And.intro E.shiftTheoremClosed
    (And.intro E.convolutionTheoremClosed E.parsevalIdentityClosed))

end ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean
end HautevilleHouse
