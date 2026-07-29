import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean

structure WaveletTheoryPackage where
  motherWavelet : Type u
  scalingFunction : Type v
  multiresolutionAnalysis : Prop
  orthogonalityCondition : Prop
  compactSupportCondition : Prop
  reconstructionFormulaHolds : Prop

structure WaveletTheoryEvidence (W : WaveletTheoryPackage) where
  multiresolutionAnalysisClosed : W.multiresolutionAnalysis
  orthogonalityConditionClosed : W.orthogonalityCondition
  compactSupportConditionClosed : W.compactSupportCondition
  reconstructionFormulaHoldsClosed : W.reconstructionFormulaHolds

def WaveletTheoryClosed (W : WaveletTheoryPackage) : Prop :=
  W.multiresolutionAnalysis ∧ W.orthogonalityCondition ∧
  W.compactSupportCondition ∧ W.reconstructionFormulaHolds

theorem wavelet_theory_closed_from_evidence (W : WaveletTheoryPackage) (E : WaveletTheoryEvidence W) :
    WaveletTheoryClosed W := by
  exact And.intro E.multiresolutionAnalysisClosed
    (And.intro E.orthogonalityConditionClosed
      (And.intro E.compactSupportConditionClosed E.reconstructionFormulaHoldsClosed))

end ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean
end HautevilleHouse