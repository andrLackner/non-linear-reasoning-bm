;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		Untitled
; Created:   		2022-01-05 18:21
; Generator of the ideal: 
; 		 -u00*x00 + u*x + v*y - v00*y00
;--------------------------------------------------------------------------

(set-logic NIA)
(set-option :produce-proofs true)

(declare-const u00 Int)
(declare-const v00 Int)
(declare-const x00 Int)
(declare-const y00 Int)

(assert 
	(exists
		((u Int) (v Int) (x Int) (y Int))
		(and
			(= (- (+ (* (- 1) u00 x00) (* u x) (* v y)) (* v00 y00)) 0)

			(or
				(not (= (- (+ (* (- 1) u00 x00) (* u (- x y)) (* (+ v u) y)) (* v00 y00)) 0))
				(not (= (- (+ (* (- 1) u00 x00) (* (+ u v) x) (* v (- y x))) (* v00 y00)) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
