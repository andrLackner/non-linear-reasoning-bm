;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		simpleloop_norm_inv1_3xlen2
; Created:   		2022-01-11 18:12
; Generator of the ideal: 
; 		 x - y00 - x00 + y
; Testing invariant: 0*x^7*x00*y^6 + 0*x^8*y^6 + 0*x^7*y^6*y00 + 0*x^6*y^7*y00 + 0*x^7*y^7 + 0*x^6*x00*y^7 + 0*x^6*y^8
;--------------------------------------------------------------------------

(set-logic NIA)
(set-option :produce-proofs true)

(declare-const x00 Int)
(declare-const y00 Int)

(assert 
	(exists
		((x Int) (y Int))
		(and
			(= (+ (- x y00 x00) y) 0)

			(or
				(not (= (+ (* 0 (- x 1) (- x 1) (- x 1) (- x 1) (- x 1) (- x 1) (- x 1) x00 (+ y 1) (+ y 1) (+ y 1) (+ y 1) (+ y 1) (+ y 1)) (* 0 (- x 1) (- x 1) (- x 1) (- x 1) (- x 1) (- x 1) (- x 1) (- x 1) (+ y 1) (+ y 1) (+ y 1) (+ y 1) (+ y 1) (+ y 1)) (* 0 (- x 1) (- x 1) (- x 1) (- x 1) (- x 1) (- x 1) (- x 1) (+ y 1) (+ y 1) (+ y 1) (+ y 1) (+ y 1) (+ y 1) y00) (* 0 (- x 1) (- x 1) (- x 1) (- x 1) (- x 1) (- x 1) (+ y 1) (+ y 1) (+ y 1) (+ y 1) (+ y 1) (+ y 1) (+ y 1) y00) (* 0 (- x 1) (- x 1) (- x 1) (- x 1) (- x 1) (- x 1) (- x 1) (+ y 1) (+ y 1) (+ y 1) (+ y 1) (+ y 1) (+ y 1) (+ y 1)) (* 0 (- x 1) (- x 1) (- x 1) (- x 1) (- x 1) (- x 1) x00 (+ y 1) (+ y 1) (+ y 1) (+ y 1) (+ y 1) (+ y 1) (+ y 1)) (* 0 (- x 1) (- x 1) (- x 1) (- x 1) (- x 1) (- x 1) (+ y 1) (+ y 1) (+ y 1) (+ y 1) (+ y 1) (+ y 1) (+ y 1) (+ y 1))) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
