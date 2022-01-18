;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		prodbin_norm_inv1_2xlen2
; Created:   		2022-01-11 18:12
; Generator of the ideal: 
; 		 -x00*y00 + x*y + z - z00
; Testing invariant: 2*x^5*y^6*z^4 - x^4*x00*y^5*y00*z^4 + x^4*y^5*z^5 + x^3*y^2*z^6 - x^4*y^3*z^4*z00 - x^5*y^6*z^3*z00 - x^4*x00*y^3*y00*z^4 + 2*x^4*y^3*z^5 + x^6*y^7*z^3 - x^5*x00*y^6*y00*z^3 - x^4*y^5*z^4*z00 - x^3*y^2*z^5*z00 + x^5*y^4*z^4 - x^3*x00*y^2*y00*z^5
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
				(not (= (- (+ (- (+ (- (+ (- (* 2 2 x 2 x 2 x 2 x 2 x (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (+ z x) (+ z x) (+ z x) (+ z x)) (* 2 x 2 x 2 x 2 x x00 (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) y00 (+ z x) (+ z x) (+ z x) (+ z x))) (* 2 x 2 x 2 x 2 x (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (+ z x) (+ z x) (+ z x) (+ z x) (+ z x)) (* 2 x 2 x 2 x (/ (- y 1) 2) (/ (- y 1) 2) (+ z x) (+ z x) (+ z x) (+ z x) (+ z x) (+ z x))) (* 2 x 2 x 2 x 2 x (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (+ z x) (+ z x) (+ z x) (+ z x) z00) (* 2 x 2 x 2 x 2 x 2 x (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (+ z x) (+ z x) (+ z x) z00) (* 2 x 2 x 2 x 2 x x00 (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) y00 (+ z x) (+ z x) (+ z x) (+ z x))) (* 2 2 x 2 x 2 x 2 x (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (+ z x) (+ z x) (+ z x) (+ z x) (+ z x)) (* 2 x 2 x 2 x 2 x 2 x 2 x (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (+ z x) (+ z x) (+ z x))) (* 2 x 2 x 2 x 2 x 2 x x00 (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) y00 (+ z x) (+ z x) (+ z x)) (* 2 x 2 x 2 x 2 x (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (+ z x) (+ z x) (+ z x) (+ z x) z00) (* 2 x 2 x 2 x (/ (- y 1) 2) (/ (- y 1) 2) (+ z x) (+ z x) (+ z x) (+ z x) (+ z x) z00)) (* 2 x 2 x 2 x 2 x 2 x (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2) (+ z x) (+ z x) (+ z x) (+ z x))) (* 2 x 2 x 2 x x00 (/ (- y 1) 2) (/ (- y 1) 2) y00 (+ z x) (+ z x) (+ z x) (+ z x) (+ z x))) 0))
				(not (= (- (+ (- (+ (- (+ (- (* 2 2 x 2 x 2 x 2 x 2 x (/ y 2) (/ y 2) (/ y 2) (/ y 2) (/ y 2) (/ y 2) z z z z) (* 2 x 2 x 2 x 2 x x00 (/ y 2) (/ y 2) (/ y 2) (/ y 2) (/ y 2) y00 z z z z)) (* 2 x 2 x 2 x 2 x (/ y 2) (/ y 2) (/ y 2) (/ y 2) (/ y 2) z z z z z) (* 2 x 2 x 2 x (/ y 2) (/ y 2) z z z z z z)) (* 2 x 2 x 2 x 2 x (/ y 2) (/ y 2) (/ y 2) z z z z z00) (* 2 x 2 x 2 x 2 x 2 x (/ y 2) (/ y 2) (/ y 2) (/ y 2) (/ y 2) (/ y 2) z z z z00) (* 2 x 2 x 2 x 2 x x00 (/ y 2) (/ y 2) (/ y 2) y00 z z z z)) (* 2 2 x 2 x 2 x 2 x (/ y 2) (/ y 2) (/ y 2) z z z z z) (* 2 x 2 x 2 x 2 x 2 x 2 x (/ y 2) (/ y 2) (/ y 2) (/ y 2) (/ y 2) (/ y 2) (/ y 2) z z z)) (* 2 x 2 x 2 x 2 x 2 x x00 (/ y 2) (/ y 2) (/ y 2) (/ y 2) (/ y 2) (/ y 2) y00 z z z) (* 2 x 2 x 2 x 2 x (/ y 2) (/ y 2) (/ y 2) (/ y 2) (/ y 2) z z z z z00) (* 2 x 2 x 2 x (/ y 2) (/ y 2) z z z z z z00)) (* 2 x 2 x 2 x 2 x 2 x (/ y 2) (/ y 2) (/ y 2) (/ y 2) z z z z)) (* 2 x 2 x 2 x x00 (/ y 2) (/ y 2) y00 z z z z z)) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
