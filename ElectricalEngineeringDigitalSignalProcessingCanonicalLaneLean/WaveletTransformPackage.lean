import .AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean

structure WaveletTransformPackage where
  motherWavelet : ℝ → ℝ
  scalingFunction : ℝ → ℝ
  multiresolutionAnalysis : Prop
  orthogonality : Prop
  reconstructionFormula : Prop

structure WaveletTransformEvidence (W : WaveletTransformPackage) where
  multiresolutionAnalysisClosed : W.multiresolutionAnalysis
  orthogonalityClosed : W.orthogonality
  reconstructionFormulaClosed : W.reconstructionFormula

def WaveletTransformClosed (W : WaveletTransformPackage) : Prop :=
  W.multiresolutionAnalysis ∧ W.orthogonality ∧ W.reconstructionFormula

theorem wavelet_transform_closed_from_evidence (W : WaveletTransformPackage)
    (E : WaveletTransformEvidence W) : WaveletTransformClosed W := by
  exact And.intro E.multiresolutionAnalysisClosed (And.intro E.orthogonalityClosed
    E.reconstructionFormulaClosed)

end ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean
end HautevilleHouse
