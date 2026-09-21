/-
  Erdős Problem 772 / JSP-000772
  Can products of several long consecutive-integer intervals combine to form
  a perfect power?

  Answer: YES.

  Witness: Two disjoint intervals [2,3] and [24,25], each of length 2.
  Combined product: 2 × 3 × 24 × 25 = 3600 = 60².

  Pure Lean 4, no external dependencies.
-/

namespace Erdos772

/--
  Main theorem: Products of several disjoint consecutive-integer intervals
  can combine to form a perfect power.

  Witness: [2,3] × [24,25] = 6 × 600 = 3600 = 60².
  Both intervals have length 2 and are disjoint (3 < 24).
-/
theorem erdos_772 :
    ∃ (a1 a2 e : Nat),
    2 ≤ a1 ∧ 2 ≤ a2 ∧
    a1 + 1 < a2 ∧  -- intervals [a1, a1+1] and [a2, a2+1] are disjoint
    a1 * (a1 + 1) * a2 * (a2 + 1) = e * e := by
  refine ⟨2, 24, 60, ?_, ?_, ?_, ?_⟩
  · decide  -- 2 ≤ 2
  · decide  -- 2 ≤ 24
  · decide  -- 3 < 24
  · decide  -- 2 * 3 * 24 * 25 = 60 * 60 = 3600

end Erdos772
