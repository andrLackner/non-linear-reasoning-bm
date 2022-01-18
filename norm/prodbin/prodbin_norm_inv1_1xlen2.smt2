;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		prodbin_norm_inv1_1xlen2
; Created:   		2022-01-11 18:12
; Generator of the ideal: 
; 		 -x00*y00 + x*y + z - z00
; Testing invariant: y^2*z00 + x00*y^2*y00 - y^2*z + x*y^2*z - x*x00*y^2*y00 + x^2*y^3 - x*y^3 - x*y^2*z00
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
				(not (= (- (+ (- (+ (- (+ (* (/ (- y 1) 2) (/ (- y 1) 2) z00) (* x00 (/ (- y 1) 2) (/ (- y 1) 2) y00)) (* (/ (- y 1) 2) (/ (- y 1) 2) (+ z x))) (* 2 x (/ (- y 1) 2) (/ (- y 1) 2) (+ z x))) (* 2 x x00 (/ (- y 1) 2) (/ (- y 1) 2) y00)) (* 2 x 2 x (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2))) (* 2 x (/ (- y 1) 2) (/ (- y 1) 2) (/ (- y 1) 2)) (* 2 x (/ (- y 1) 2) (/ (- y 1) 2) z00)) 0))
				(not (= (- (+ (- (+ (- (+ (* (/ y 2) (/ y 2) z00) (* x00 (/ y 2) (/ y 2) y00)) (* (/ y 2) (/ y 2) z)) (* 2 x (/ y 2) (/ y 2) z)) (* 2 x x00 (/ y 2) (/ y 2) y00)) (* 2 x 2 x (/ y 2) (/ y 2) (/ y 2))) (* 2 x (/ y 2) (/ y 2) (/ y 2)) (* 2 x (/ y 2) (/ y 2) z00)) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
