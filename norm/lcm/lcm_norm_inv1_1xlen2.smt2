;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		lcm_norm_inv1_1xlen2
; Created:   		2022-01-11 18:12
; Generator of the ideal: 
; 		 -u00*x00 + u*x + v*y - v00*y00
; Testing invariant: u*v^2*y^4 + u^3*v^3*x^3*y - u*u00*v*x00*y^3 - u^2*v^3*v00*x^2*y*y00 + u^2*v^4*x^2*y^2 - u*v*v00*y^3*y00 - u^2*u00*v^3*x^2*x00*y + u^2*v*x*y^3
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
				(not (= (+ (- (+ (- (+ (* u (+ v u) (+ v u) y y y y) (* u u u (+ v u) (+ v u) (+ v u) (- x y) (- x y) (- x y) y)) (* u u00 (+ v u) x00 y y y) (* u u (+ v u) (+ v u) (+ v u) v00 (- x y) (- x y) y y00)) (* u u (+ v u) (+ v u) (+ v u) (+ v u) (- x y) (- x y) y y)) (* u (+ v u) v00 y y y y00) (* u u u00 (+ v u) (+ v u) (+ v u) (- x y) (- x y) x00 y)) (* u u (+ v u) (- x y) y y y)) 0))
				(not (= (+ (- (+ (- (+ (* (+ u v) v v (- y x) (- y x) (- y x) (- y x)) (* (+ u v) (+ u v) (+ u v) v v v x x x (- y x))) (* (+ u v) u00 v x00 (- y x) (- y x) (- y x)) (* (+ u v) (+ u v) v v v v00 x x (- y x) y00)) (* (+ u v) (+ u v) v v v v x x (- y x) (- y x))) (* (+ u v) v v00 (- y x) (- y x) (- y x) y00) (* (+ u v) (+ u v) u00 v v v x x x00 (- y x))) (* (+ u v) (+ u v) v x (- y x) (- y x) (- y x))) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
