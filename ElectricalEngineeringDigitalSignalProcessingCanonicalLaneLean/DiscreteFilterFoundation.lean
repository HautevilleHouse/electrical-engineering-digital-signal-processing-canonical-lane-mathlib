import ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean.DSPAdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean

structure DiscreteFilterPackage where
  inputSignal : DSPSignal
  impulseResponse : ℕ → ℝ
  convolutionSum : ℕ → ℝ
  stabilityCriterion : Prop
  causalityCriterion : Prop

structure DiscreteFilterEvidence (F : DiscreteFilterPackage) where
  stabilityCriterionClosed : F.stabilityCriterion
  causalityCriterionClosed : F.causalityCriterion

def DiscreteFilterClosed (F : DiscreteFilterPackage) : Prop :=
  F.stabilityCriterion ∧ F.causalityCriterion

theorem discrete_filter_closed_from_evidence (F : DiscreteFilterPackage)
    (E : DiscreteFilterEvidence F) : DiscreteFilterClosed F := by
  exact And.intro E.stabilityCriterionClosed E.causalityCriterionClosed

end ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean
end HautevilleHouse
