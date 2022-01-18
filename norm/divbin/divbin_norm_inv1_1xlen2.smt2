;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		divbin_norm_inv1_1xlen2
; Created:   		2022-01-11 18:12
; Generator of the ideal: 
; 		 -b00*x00 + r - r00 + b*x
; Testing invariant: b*r^4*x + b^3*r^4*x - b*b00*r^3*x*x00 - b^3*r^3*r00*x + b^2*r^3*x^2 - b^3*b00*r^3*x*x00 + b^4*r^3*x^2 - b*r^3*r00*x
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
				(not (= (- (+ (- (+ (- (+ (* (/ b 2) r r r r 2 x) (* (/ b 2) (/ b 2) (/ b 2) r r r r 2 x)) (* (/ b 2) b00 r r r 2 x x00) (* (/ b 2) (/ b 2) (/ b 2) r r r r00 2 x)) (* (/ b 2) (/ b 2) r r r 2 x 2 x)) (* (/ b 2) (/ b 2) (/ b 2) b00 r r r 2 x x00)) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) r r r 2 x 2 x)) (* (/ b 2) r r r r00 2 x)) 0))
				(not (= (- (+ (- (+ (- (+ (* (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1)) (* (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1))) (* (/ b 2) b00 (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) x00) (* (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) r00 (+ (* 2 x) 1))) (* (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) (+ (* 2 x) 1))) (* (/ b 2) (/ b 2) (/ b 2) b00 (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) x00)) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) (+ (* 2 x) 1))) (* (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) r00 (+ (* 2 x) 1))) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
