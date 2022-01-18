;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		divbin_norm_inv1_1xlen3
; Created:   		2022-01-11 18:12
; Generator of the ideal: 
; 		 -b00*x00 + r - r00 + b*x
; Testing invariant: -b^2*r^2 - r^2*r00*x^3 + b^2*r*r00 + r^3*x^3 + b^3*r*r00 + b*r^2*x^4 + b^2*b00*r*x00 - b00*r^2*x^3*x00 - b^3*r*x + b^3*b00*r*x00 - b^4*r*x - b^3*r^2
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
				(not (= (- (+ (- (+ (- (* (- 1) (/ b 2) (/ b 2) r r) (* r r r00 2 x 2 x 2 x)) (* (/ b 2) (/ b 2) r r00) (* r r r 2 x 2 x 2 x) (* (/ b 2) (/ b 2) (/ b 2) r r00) (* (/ b 2) r r 2 x 2 x 2 x 2 x) (* (/ b 2) (/ b 2) b00 r x00)) (* b00 r r 2 x 2 x 2 x x00) (* (/ b 2) (/ b 2) (/ b 2) r 2 x)) (* (/ b 2) (/ b 2) (/ b 2) b00 r x00)) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) r 2 x) (* (/ b 2) (/ b 2) (/ b 2) r r)) 0))
				(not (= (- (+ (- (+ (- (* (- 1) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2))) (* (- r (/ b 2)) (- r (/ b 2)) r00 (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1))) (* (/ b 2) (/ b 2) (- r (/ b 2)) r00) (* (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1)) (* (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) r00) (* (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1)) (* (/ b 2) (/ b 2) b00 (- r (/ b 2)) x00)) (* b00 (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) x00) (* (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (+ (* 2 x) 1))) (* (/ b 2) (/ b 2) (/ b 2) b00 (- r (/ b 2)) x00)) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (+ (* 2 x) 1)) (* (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)))) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
