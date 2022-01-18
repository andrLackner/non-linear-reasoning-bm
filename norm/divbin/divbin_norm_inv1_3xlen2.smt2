;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		divbin_norm_inv1_3xlen2
; Created:   		2022-01-11 18:12
; Generator of the ideal: 
; 		 -b00*x00 + r - r00 + b*x
; Testing invariant: b^2*b00*r^7*x00 + b^3*b00*r^3*x^4*x00 - b^3*r^7*x - b^4*b00*r^4*x^5*x00 + b^3*r^9*x + b^4*r^6*r00*x^4 + b^4*r^8*x^2 - b^4*r^6*x^3 - b^4*r^3*x^5 - b^2*b00*r^5*x*x00 + b^3*r^6*r00*x^2 + b^2*r^7*r00 - b^2*r^8 - b^3*r^7*x^2 + b^3*r^5*x^2 + b^5*r^4*x^6 - b^2*r^5*r00*x + b^2*r^6*x - b^5*r^6*x^5 - b^3*b00*r^5*x^3*x00 - b^3*r^8*r00*x + b^3*r^3*r00*x^4 + b^4*r^5*x^5 + b^4*r^5*x^4 - b^4*r^7*x^4 - b^3*r^4*x^4 + b^4*b00*r^6*x^4*x00 + b^3*r^6*x^3 - b^3*b00*r^8*x*x00 - b^4*r^4*r00*x^5 - b^3*r^5*r00*x^3 + b^3*b00*r^6*x^2*x00
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
				(not (= (+ (- (+ (- (+ (- (+ (- (+ (- (+ (- (+ (- (+ (* (/ b 2) (/ b 2) b00 r r r r r r r x00) (* (/ b 2) (/ b 2) (/ b 2) b00 r r r 2 x 2 x 2 x 2 x x00)) (* (/ b 2) (/ b 2) (/ b 2) r r r r r r r 2 x) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) b00 r r r r 2 x 2 x 2 x 2 x 2 x x00)) (* (/ b 2) (/ b 2) (/ b 2) r r r r r r r r r 2 x) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) r r r r r r r00 2 x 2 x 2 x 2 x) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) r r r r r r r r 2 x 2 x)) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) r r r r r r 2 x 2 x 2 x) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) r r r 2 x 2 x 2 x 2 x 2 x) (* (/ b 2) (/ b 2) b00 r r r r r 2 x x00)) (* (/ b 2) (/ b 2) (/ b 2) r r r r r r r00 2 x 2 x) (* (/ b 2) (/ b 2) r r r r r r r r00)) (* (/ b 2) (/ b 2) r r r r r r r r) (* (/ b 2) (/ b 2) (/ b 2) r r r r r r r 2 x 2 x)) (* (/ b 2) (/ b 2) (/ b 2) r r r r r 2 x 2 x) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) (/ b 2) r r r r 2 x 2 x 2 x 2 x 2 x 2 x)) (* (/ b 2) (/ b 2) r r r r r r00 2 x)) (* (/ b 2) (/ b 2) r r r r r r 2 x)) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) (/ b 2) r r r r r r 2 x 2 x 2 x 2 x 2 x) (* (/ b 2) (/ b 2) (/ b 2) b00 r r r r r 2 x 2 x 2 x x00) (* (/ b 2) (/ b 2) (/ b 2) r r r r r r r r r00 2 x)) (* (/ b 2) (/ b 2) (/ b 2) r r r r00 2 x 2 x 2 x 2 x) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) r r r r r 2 x 2 x 2 x 2 x 2 x) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) r r r r r 2 x 2 x 2 x 2 x)) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) r r r r r r r 2 x 2 x 2 x 2 x) (* (/ b 2) (/ b 2) (/ b 2) r r r r 2 x 2 x 2 x 2 x)) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) b00 r r r r r r 2 x 2 x 2 x 2 x x00) (* (/ b 2) (/ b 2) (/ b 2) r r r r r r 2 x 2 x 2 x)) (* (/ b 2) (/ b 2) (/ b 2) b00 r r r r r r r r 2 x x00) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) r r r r r00 2 x 2 x 2 x 2 x 2 x) (* (/ b 2) (/ b 2) (/ b 2) r r r r r r00 2 x 2 x 2 x)) (* (/ b 2) (/ b 2) (/ b 2) b00 r r r r r r 2 x 2 x x00)) 0))
				(not (= (+ (- (+ (- (+ (- (+ (- (+ (- (+ (- (+ (- (+ (* (/ b 2) (/ b 2) b00 (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) x00) (* (/ b 2) (/ b 2) (/ b 2) b00 (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) x00)) (* (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1)) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) b00 (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) x00)) (* (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1)) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) r00 (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1)) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) (+ (* 2 x) 1))) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1)) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1)) (* (/ b 2) (/ b 2) b00 (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) x00)) (* (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) r00 (+ (* 2 x) 1) (+ (* 2 x) 1)) (* (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) r00)) (* (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2))) (* (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) (+ (* 2 x) 1))) (* (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) (+ (* 2 x) 1)) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1))) (* (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) r00 (+ (* 2 x) 1))) (* (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1))) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1)) (* (/ b 2) (/ b 2) (/ b 2) b00 (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) x00) (* (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) r00 (+ (* 2 x) 1))) (* (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) r00 (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1)) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1)) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1))) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1)) (* (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1))) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) b00 (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) x00) (* (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1))) (* (/ b 2) (/ b 2) (/ b 2) b00 (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) x00) (* (/ b 2) (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) r00 (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1)) (* (/ b 2) (/ b 2) (/ b 2) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) r00 (+ (* 2 x) 1) (+ (* 2 x) 1) (+ (* 2 x) 1))) (* (/ b 2) (/ b 2) (/ b 2) b00 (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (- r (/ b 2)) (+ (* 2 x) 1) (+ (* 2 x) 1) x00)) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
