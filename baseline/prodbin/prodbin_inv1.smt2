;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		prodbin_inv1
; Created:   		2022-01-05 18:44
; Generator of the ideal: 
; 		 -x00*y00 + x*y + z - z00
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
				(not (= (- (+ (* (- 1) x00 y00) (* 2 x (/ (- y 1) 2)) z x) z00) 0))
				(not (= (- (+ (* (- 1) x00 y00) (* 2 x (/ y 2)) z) z00) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
