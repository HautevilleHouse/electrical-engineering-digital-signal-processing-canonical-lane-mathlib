import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean

structure FilterDesignPackage where
  inputSignal : Type u
  outputSignal : Type v
  filterImpulseResponse : Type w
  linearityCondition : Prop
  timeInvarianceCondition : Prop
  stabilityCondition : Prop
  causalityCondition : Prop

structure FilterDesignEvidence (F : FilterDesignPackage) where
  linearityConditionClosed : F.linearityCondition
  timeInvarianceConditionClosed : F.timeInvarianceCondition
  stabilityConditionClosed : F.stabilityCondition
  causalityConditionClosed : F.causalityCondition

def FilterDesignClosed (F : FilterDesignPackage) : Prop :=
  F.linearityCondition ∧ F.timeInvarianceCondition ∧
  F.stabilityCondition ∧ F.causalityCondition

theorem filter_design_closed_from_evidence (F : FilterDesignPackage) (E : FilterDesignEvidence F) :
    FilterDesignClosed F := by
  exact And.intro E.linearityConditionClosed
    (And.intro E.timeInvarianceConditionClosed
      (And.intro E.stabilityConditionClosed E.causalityConditionClosed))

end ElectricalEngineeringDigitalSignalProcessingCanonicalLaneLean
end HautevilleHouse