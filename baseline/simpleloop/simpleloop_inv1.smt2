;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		simpleloop
; Created:   		2022-01-05 17:39
; Generator of the ideal: 
; 		 x - y00 - x00 + y
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
				(not (= (+ (- x 1 y00 x00) y 1) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
