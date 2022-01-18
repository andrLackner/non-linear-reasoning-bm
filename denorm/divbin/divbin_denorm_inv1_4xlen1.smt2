;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		divbin_denorm_inv1_4xlen1
; Created:   		2022-01-11 18:16
; Generator of the ideal: 
; 		 -b00*x00 + r - r00 + b*x
; Testing invariant: (-b00*x00 + r - r00 + b*x) * (b^3*r^2*x^2) * (b^2*r^3*x^2) * (b^3*r^2*x) * (b^3*r*x^2)
;--------------------------------------------------------------------------

(set-logic NRA)
(set-option :produce-proofs true)

(declare-const b00 Real)
(declare-const r00 Real)
(declare-const x00 Real)

(assert 
	(exists
		((b Real) (r Real) (x Real))
		(and
			(= (+ (- (+ (* (- 1) b00 x00) r) r00) (* b x)) 0)

			(or
				(not (= (* (+ (- (+ (* (- 1) b00 x00) r) r00) (* (/ b 2) 2 x)) (/ b 2) (/ b 2) (/ b 2) r r 2 x 2 x (/ b 2) (/ b 2) r r r 2 x 2 x (/ b 2) (/ b 2) (/ b 2) r r 2 x (/ b 2) (/ b 2) (/ b 2) r 2 x 2 x) 0))
				(not (= (* (+ (- (+ (* (- 1) b00 x00) (- r (/ b 2))) r00) (* (/ b 2) (+ (* 2 x) 1))) (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) (+ (* 2 x) 1) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) (+ (* 2 x) 1) (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (+ (* 2 x) 1) (+ (* 2 x) 1)) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
