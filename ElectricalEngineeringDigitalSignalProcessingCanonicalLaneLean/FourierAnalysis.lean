import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean

structure FourierAnalysisPackage where
  timeDomainSignal : Type u
  frequencyDomainRepresentation : Type v
  fourierTransformExists : Prop
  inversionFormulaHolds : Prop
  convolutionTheoremHolds : Prop

structure FourierAnalysisEvidence (F : FourierAnalysisPackage) where
  fourierTransformExistsClosed : F.fourierTransformExists
  inversionFormulaHoldsClosed : F.inversionFormulaHolds
  convolutionTheoremHoldsClosed : F.convolutionTheoremHolds

def FourierAnalysisClosed (F : FourierAnalysisPackage) : Prop :=
  F.fourierTransformExists ∧ F.inversionFormulaHolds ∧ F.convolutionTheoremHolds

theorem fourier_analysis_closed_from_evidence (F : FourierAnalysisPackage) (E : FourierAnalysisEvidence F) :
    FourierAnalysisClosed F := by
  exact And.intro E.fourierTransformExistsClosed
    (And.intro E.inversionFormulaHoldsClosed E.convolutionTheoremHoldsClosed)

end ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean
end HautevilleHouse