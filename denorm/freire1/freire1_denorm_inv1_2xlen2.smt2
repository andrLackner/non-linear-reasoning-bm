;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		freire1_denorm_inv1_2xlen2
; Created:   		2022-01-11 18:16
; Generator of the ideal: 
; 		 -r + r00 + r^2 + 2*x - 2*x00 - r00^2
; Testing invariant: (-r + r00 + r^2 + 2*x - 2*x00 - r00^2) * (r*x - r^2*x) * (r*x - r*x^3)
;--------------------------------------------------------------------------

(set-logic NIA)
(set-option :produce-proofs true)

(declare-const r00 Int)
(declare-const x00 Int)

(assert 
	(exists
		((r Int) (x Int))
		(and
			(= (- (+ (* (- 1) r) r00 (* r r) (* 2 x)) (* 2 x00) (* r00 r00)) 0)

			(or
				(not (= (* (- (+ (* (- 1) (+ r 1)) r00 (* (+ r 1) (+ r 1)) (* 2 (- x r))) (* 2 x00) (* r00 r00)) (- (* (+ r 1) (- x r)) (* (+ r 1) (+ r 1) (- x r))) (- (* (+ r 1) (- x r)) (* (+ r 1) (- x r) (- x r) (- x r)))) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
