;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		prodbin_norm_inv1_1xlen3
; Created:   		2022-01-11 18:12
; Generator of the ideal: 
; 		 -x00*y00 + x*y + z - z00
; Testing invariant: -x*x00*y^3*y00*z - x*y^2*z^3 - x00*y00*z^2 + x*y^3*z^2 - x^2*y^3*z^2 - x*y^3*z*z00 - z^2*z00 + x^2*y^4*z + x*x00*y^2*y00*z^2 + x*y*z^2 + z^3 + x*y^2*z^2*z00
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
				(not (= (+ (- (+ (- (* (- 1) 2 x x00 (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) y00 (+ z x)) (* 2 x (/ (- y 1) 2) (/ (- y 1) 2) (+ z x) (+ z x) (+ z x)) (* x00 y00 (+ z x) (+ z x))) (* 2 x (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (+ z x) (+ z x))) (* 2 x 2 x (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (+ z x) (+ z x)) (* 2 x (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (+ z x) z00) (* (+ z x) (+ z x) z00)) (* 2 x 2 x (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (+ z x)) (* 2 x x00 (/ (- y 1) 2) (/ (- y 1) 2) y00 (+ z x) (+ z x)) (* 2 x (/ (- y 1) 2) (+ z x) (+ z x)) (* (+ z x) (+ z x) (+ z x)) (* 2 x (/ (- y 1) 2) (/ (- y 1) 2) (+ z x) (+ z x) z00)) 0))
				(not (= (+ (- (+ (- (* (- 1) 2 x x00 (/ y 2) (/ y 2) (/ y 2) y00 z) (* 2 x (/ y 2) (/ y 2) z z z) (* x00 y00 z z)) (* 2 x (/ y 2) (/ y 2) (/ y 2) z z)) (* 2 x 2 x (/ y 2) (/ y 2) (/ y 2) z z) (* 2 x (/ y 2) (/ y 2) (/ y 2) z z00) (* z z z00)) (* 2 x 2 x (/ y 2) (/ y 2) (/ y 2) (/ y 2) z) (* 2 x x00 (/ y 2) (/ y 2) y00 z z) (* 2 x (/ y 2) z z) (* z z z) (* 2 x (/ y 2) (/ y 2) z z z00)) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
