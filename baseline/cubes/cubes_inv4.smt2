;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		cubes_inv4
; Created:   		2022-01-05 17:10
; Generator of the ideal: 
; 		 -6 + m - 6*n
; 		 4 - 18*c - 9*c*n - 5*k + 9*n + k^2
; 		 -3*c + k*n - k + 2*n
; 		 3*n^2 - k + 3*n
;--------------------------------------------------------------------------

(set-logic NIA)
(set-option :produce-proofs true)

(declare-const c00 Int)
(declare-const k00 Int)
(declare-const m00 Int)
(declare-const n00 Int)

(assert 
	(exists
		((c Int) (k Int) (m Int) (n Int))
		(and
			(= (- (+ (- 6) m) (* 6 n)) 0)
			(= (+ (- 4 (* 18 c) (* 9 c n) (* 5 k)) (* 9 n) (* k k)) 0)
			(= (+ (- (+ (* (- 3) c) (* k n)) k) (* 2 n)) 0)
			(= (+ (- (* 3 n n) k) (* 3 n)) 0)

			(or
				(not (= (+ (- (* 3 (+ n 1) (+ n 1)) (+ k m)) (* 3 (+ n 1))) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
