import .AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean

structure FilterDesignPackage where
  firCoefficients : List ℝ
  iirCoefficients : List ℝ
  stability : Prop
  linearPhase : Prop
  frequencyResponse : ℝ → ℂ
  magnitudeResponse : ℝ → ℝ

structure FilterDesignEvidence (F : FilterDesignPackage) where
  stabilityClosed : F.stability
  linearPhaseClosed : F.linearPhase
  magnitudeResponseBounded : Prop

def FilterDesignClosed (F : FilterDesignPackage) : Prop :=
  F.stability ∧ F.linearPhase ∧ magnitudeResponseBounded

theorem filter_design_closed_from_evidence (F : FilterDesignPackage)
    (E : FilterDesignEvidence F) : FilterDesignClosed F := by
  exact And.intro E.stabilityClosed (And.intro E.linearPhaseClosed E.magnitudeResponseBounded)

end ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean
end HautevilleHouse
