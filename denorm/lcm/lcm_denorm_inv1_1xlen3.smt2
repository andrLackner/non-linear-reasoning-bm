;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		lcm_denorm_inv1_1xlen3
; Created:   		2022-01-11 18:16
; Generator of the ideal: 
; 		 -u00*x00 + u*x + v*y - v00*y00
; Testing invariant: (-u00*x00 + u*x + v*y - v00*y00) * (-u^3*v^3*x^2*y + v^3*y + u^3*v^2)
;--------------------------------------------------------------------------

(set-logic NIA)
(set-option :produce-proofs true)

(declare-const u00 Int)
(declare-const v00 Int)
(declare-const x00 Int)
(declare-const y00 Int)

(assert 
	(exists
		((u Int) (v Int) (x Int) (y Int))
		(and
			(= (- (+ (* (- 1) u00 x00) (* u x) (* v y)) (* v00 y00)) 0)

			(or
				(not (= (* (- (+ (* (- 1) u00 x00) (* u (- x y)) (* (+ v u) y)) (* v00 y00)) (+ (* (- 1) u u u (+ v u) (+ v u) (+ v u) (- x y) (- x y) y) (* (+ v u) (+ v u) (+ v u) y) (* u u u (+ v u) (+ v u)))) 0))
				(not (= (* (- (+ (* (- 1) u00 x00) (* (+ u v) x) (* v (- y x))) (* v00 y00)) (+ (* (- 1) (+ u v) (+ u v) (+ u v) v v v x x (- y x)) (* v v v (- y x)) (* (+ u v) (+ u v) (+ u v) v v))) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
