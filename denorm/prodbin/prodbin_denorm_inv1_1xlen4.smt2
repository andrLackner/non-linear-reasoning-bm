;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		prodbin_denorm_inv1_1xlen4
; Created:   		2022-01-11 18:16
; Generator of the ideal: 
; 		 -x00*y00 + x*y + z - z00
; Testing invariant: (-x00*y00 + x*y + z - z00) * (-y*z - x^3*y*z + x^2*z^3 - x^3*z)
;--------------------------------------------------------------------------

(set-logic NRA)
(set-option :produce-proofs true)

(declare-const x00 Real)
(declare-const y00 Real)
(declare-const z00 Real)

(assert 
	(exists
		((x Real) (y Real) (z Real))
		(and
			(= (- (+ (* (- 1) x00 y00) (* x y) z) z00) 0)

			(or
				(not (= (* (- (+ (* (- 1) x00 y00) (* 2 x (/ (- y 1) 2)) z x) z00) (- (+ (- (* (- 1) (/ (- y 1) 2) (+ z x)) (* 2 x 2 x 2 x (/ (- y 1) 2) (+ z x))) (* 2 x 2 x (+ z x) (+ z x) (+ z x))) (* 2 x 2 x 2 x (+ z x)))) 0))
				(not (= (* (- (+ (* (- 1) x00 y00) (* 2 x (/ y 2)) z) z00) (- (+ (- (* (- 1) (/ y 2) z) (* 2 x 2 x 2 x (/ y 2) z)) (* 2 x 2 x z z z)) (* 2 x 2 x 2 x z))) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
