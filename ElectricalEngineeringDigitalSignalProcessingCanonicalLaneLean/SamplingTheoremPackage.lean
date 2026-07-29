import .AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean

structure SamplingTheoremPackage where
  samplingRate : ℕ
  nyquistRate : ℕ
  aliasingFree : Prop
  reconstructionPossible : Prop
  perfectReconstruction : Prop

structure SamplingTheoremEvidence (S : SamplingTheoremPackage) where
  aliasingFreeClosed : S.aliasingFree
  reconstructionPossibleClosed : S.reconstructionPossible
  perfectReconstructionClosed : S.perfectReconstruction

def SamplingTheoremClosed (S : SamplingTheoremPackage) : Prop :=
  S.aliasingFree ∧ S.reconstructionPossible ∧ S.perfectReconstruction

theorem sampling_theorem_closed_from_evidence (S : SamplingTheoremPackage)
    (E : SamplingTheoremEvidence S) : SamplingTheoremClosed S := by
  exact And.intro E.aliasingFreeClosed (And.intro E.reconstructionPossibleClosed
    E.perfectReconstructionClosed)

end ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean
end HautevilleHouse
