;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		cubes_norm_inv1_2xlen2
; Created:   		2022-01-11 18:11
; Generator of the ideal: 
; 		 -6*1 + m - 6*n
; 		 4*1 - 18*c - 9*c*n - 5*k + 9*n + k^2
; 		 1 - 3*c + k*n - k + 2*n
; 		 1 + 3*n^2 - k + 3*n
; Testing invariant: -6*c^2*k^4*m^5*n + c^2*k^4*m^6 - 6*c^2*k^4*m^5 + c^3*k^4*m^7*n + c^2*k^5*m^4*n - 6*c^3*k^4*m^6*n^2 - 6*c^2*k^5*m^3*n - 6*c^2*k^5*m^3*n^2 - 6*c^3*k^4*m^6*n - 6*c^3*k^5*m^4*n^3 - 6*c^3*k^5*m^4*n^2 + c^3*k^5*m^5*n^2
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
			(= (- (+ (* (- 6) 1) m) (* 6 n)) 0)
			(= (+ (- (* 4 1) (* 18 c) (* 9 c n) (* 5 k)) (* 9 n) (* k k)) 0)
			(= (+ (- (+ (- 1 (* 3 c)) (* k n)) k) (* 2 n)) 0)
			(= (+ (- (+ 1 (* 3 n n)) k) (* 3 n)) 0)

			(or
				(not (= (+ (- (+ (- (+ (* (- 6) (+ c k) (+ c k) (+ k m) (+ k m) (+ k m) (+ k m) (+ m 6) (+ m 6) (+ m 6) (+ m 6) (+ m 6) (+ n 1)) (* (+ c k) (+ c k) (+ k m) (+ k m) (+ k m) (+ k m) (+ m 6) (+ m 6) (+ m 6) (+ m 6) (+ m 6) (+ m 6))) (* 6 (+ c k) (+ c k) (+ k m) (+ k m) (+ k m) (+ k m) (+ m 6) (+ m 6) (+ m 6) (+ m 6) (+ m 6))) (* (+ c k) (+ c k) (+ c k) (+ k m) (+ k m) (+ k m) (+ k m) (+ m 6) (+ m 6) (+ m 6) (+ m 6) (+ m 6) (+ m 6) (+ m 6) (+ n 1)) (* (+ c k) (+ c k) (+ k m) (+ k m) (+ k m) (+ k m) (+ k m) (+ m 6) (+ m 6) (+ m 6) (+ m 6) (+ n 1))) (* 6 (+ c k) (+ c k) (+ c k) (+ k m) (+ k m) (+ k m) (+ k m) (+ m 6) (+ m 6) (+ m 6) (+ m 6) (+ m 6) (+ m 6) (+ n 1) (+ n 1)) (* 6 (+ c k) (+ c k) (+ k m) (+ k m) (+ k m) (+ k m) (+ k m) (+ m 6) (+ m 6) (+ m 6) (+ n 1)) (* 6 (+ c k) (+ c k) (+ k m) (+ k m) (+ k m) (+ k m) (+ k m) (+ m 6) (+ m 6) (+ m 6) (+ n 1) (+ n 1)) (* 6 (+ c k) (+ c k) (+ c k) (+ k m) (+ k m) (+ k m) (+ k m) (+ m 6) (+ m 6) (+ m 6) (+ m 6) (+ m 6) (+ m 6) (+ n 1)) (* 6 (+ c k) (+ c k) (+ c k) (+ k m) (+ k m) (+ k m) (+ k m) (+ k m) (+ m 6) (+ m 6) (+ m 6) (+ m 6) (+ n 1) (+ n 1) (+ n 1)) (* 6 (+ c k) (+ c k) (+ c k) (+ k m) (+ k m) (+ k m) (+ k m) (+ k m) (+ m 6) (+ m 6) (+ m 6) (+ m 6) (+ n 1) (+ n 1))) (* (+ c k) (+ c k) (+ c k) (+ k m) (+ k m) (+ k m) (+ k m) (+ k m) (+ m 6) (+ m 6) (+ m 6) (+ m 6) (+ m 6) (+ n 1) (+ n 1))) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
