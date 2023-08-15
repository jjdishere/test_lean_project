import Mathlib.Topology.Algebra.ValuedField
import Mathlib.Data.Polynomial.Splits
import Mathlib.Data.Polynomial.RingDivision
import Mathlib.FieldTheory.Adjoin

class ValuedFieldExtension (K : Type _) (L : Type _) {Γ₀ : Type _} [LinearOrderedCommGroupWithZero Γ₀] [Field K] [Field L] [vK : Valued K Γ₀] [vL : Valued L Γ₀] extends Algebra K L where
  preserve_valuation : ∀ x : K, vL.v (toRingHom x) = vK.v x  

#check Polynomial
#check Polynomial.Splits
#check Polynomial.roots

theorem Krasner (K : Type _) [Field K] {Γ₀ : Type _} [LinearOrderedCommGroupWithZero Γ₀] [Valued K Γ₀] (L : Type _) [Field L] [vL : Valued L Γ₀] [i : ValuedFieldExtension K L] (f : Polynomial K) (hirr : Irreducible f) (hsp : Polynomial.Splits i.toRingHom f) : ∀ α : L, ∀ β : L, f.eval₂ i.toRingHom (α) = 0 → (∀ α' : L, f.eval₂ i.toRingHom (α') = 0 → α' ≠ α → vL.v (α - β) < vL.v (α - α')) → (K⟮α⟯ ≤ K⟮β⟯) := sorry
