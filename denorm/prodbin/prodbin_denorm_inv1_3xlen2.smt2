;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		prodbin_denorm_inv1_3xlen2
; Created:   		2022-01-11 18:16
; Generator of the ideal: 
; 		 -x00*y00 + x*y + z - z00
; Testing invariant: (-x00*y00 + x*y + z - z00) * (-x^3*y^3 - x^2*y^2) * (-x^3*y - x^2) * (-x*y^2 + y*z^3)
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
				(not (= (* (- (+ (* (- 1) x00 y00) (* 2 x (/ (- y 1) 2)) z x) z00) (- (* (- 1) 2 x 2 x 2 x (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2)) (* 2 x 2 x (/ (- y 1) 2) (/ (- y 1) 2))) (- (* (- 1) 2 x 2 x 2 x (/ (- y 1) 2)) (* 2 x 2 x)) (+ (* (- 1) 2 x (/ (- y 1) 2) (/ (- y 1) 2)) (* (/ (- y 1) 2) (+ z x) (+ z x) (+ z x)))) 0))
				(not (= (* (- (+ (* (- 1) x00 y00) (* 2 x (/ y 2)) z) z00) (- (* (- 1) 2 x 2 x 2 x (/ y 2) (/ y 2) (/ y 2)) (* 2 x 2 x (/ y 2) (/ y 2))) (- (* (- 1) 2 x 2 x 2 x (/ y 2)) (* 2 x 2 x)) (+ (* (- 1) 2 x (/ y 2) (/ y 2)) (* (/ y 2) z z z))) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
