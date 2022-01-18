;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		lcm_denorm_inv1_2xlen3
; Created:   		2022-01-11 18:16
; Generator of the ideal: 
; 		 -u00*x00 + u*x + v*y - v00*y00
; Testing invariant: (-u00*x00 + u*x + v*y - v00*y00) * (-u*v^2 + u^3*x*y^2 - v*x^3*y^2) * (-u^2*v^2*x^3*y + u*v^3*x*y - y^2)
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
				(not (= (* (- (+ (* (- 1) u00 x00) (* u (- x y)) (* (+ v u) y)) (* v00 y00)) (- (+ (* (- 1) u (+ v u) (+ v u)) (* u u u (- x y) y y)) (* (+ v u) (- x y) (- x y) (- x y) y y)) (- (+ (* (- 1) u u (+ v u) (+ v u) (- x y) (- x y) (- x y) y) (* u (+ v u) (+ v u) (+ v u) (- x y) y)) (* y y))) 0))
				(not (= (* (- (+ (* (- 1) u00 x00) (* (+ u v) x) (* v (- y x))) (* v00 y00)) (- (+ (* (- 1) (+ u v) v v) (* (+ u v) (+ u v) (+ u v) x (- y x) (- y x))) (* v x x x (- y x) (- y x))) (- (+ (* (- 1) (+ u v) (+ u v) v v x x x (- y x)) (* (+ u v) v v v x (- y x))) (* (- y x) (- y x)))) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
