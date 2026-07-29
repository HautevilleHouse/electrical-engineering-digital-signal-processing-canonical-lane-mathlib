import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean

structure WaveletPackage where
  scalingFunction : Prop
  waveletFunction : Prop
  multiresolutionAnalysis : Prop
  orthogonality : Prop

structure WaveletEvidence (W : WaveletPackage) where
  scalingFunctionClosed : W.scalingFunction
  waveletFunctionClosed : W.waveletFunction
  multiresolutionAnalysisClosed : W.multiresolutionAnalysis
  orthogonalityClosed : W.orthogonality

def WaveletClosed (W : WaveletPackage) : Prop :=
  W.scalingFunction ∧ W.waveletFunction ∧ W.multiresolutionAnalysis ∧ W.orthogonality

theorem wavelet_closed_from_evidence (W : WaveletPackage) (E : WaveletEvidence W) :
    WaveletClosed W := by
  exact And.intro E.scalingFunctionClosed (And.intro E.waveletFunctionClosed (And.intro E.multiresolutionAnalysisClosed E.orthogonalityClosed))

end ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean
end HautevilleHouse