;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		cubes_norm_inv3_1xlen3
; Created:   		2022-01-11 18:11
; Generator of the ideal: 
; 		 -6*1 + m - 6*n
; 		 4*1 - 18*c - 9*c*n - 5*k + 9*n + k^2
; 		 1 - 3*c + k*n - k + 2*n
; 		 1 + 3*n^2 - k + 3*n
; Testing invariant: -3*c*k^2*m^3*n + c^2*k^4*m^2*n + 2*c*m^3*n^3 + k^3*m^3*n^2 + c*m^3*n^2 - k^3*m^3*n - c^2*k^3*m^2*n + 3*c^3*k^3*m^2*n - 3*c^2*m^3*n^2 + 2*k^2*m^3*n^2 - 2*c^2*k^3*m^2*n^2 - c*k*m^3*n^2 - c^2*k^4*m^2*n^2 + c*k*m^3*n^3 + k^2*m^3*n
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
				(not (= (+ (- (+ (- (+ (- (+ (* (- 3) (+ c k) (+ k m) (+ k m) (+ m 6) (+ m 6) (+ m 6) (+ n 1)) (* (+ c k) (+ c k) (+ k m) (+ k m) (+ k m) (+ k m) (+ m 6) (+ m 6) (+ n 1)) (* 2 (+ c k) (+ m 6) (+ m 6) (+ m 6) (+ n 1) (+ n 1) (+ n 1)) (* (+ k m) (+ k m) (+ k m) (+ m 6) (+ m 6) (+ m 6) (+ n 1) (+ n 1)) (* (+ c k) (+ m 6) (+ m 6) (+ m 6) (+ n 1) (+ n 1))) (* (+ k m) (+ k m) (+ k m) (+ m 6) (+ m 6) (+ m 6) (+ n 1)) (* (+ c k) (+ c k) (+ k m) (+ k m) (+ k m) (+ m 6) (+ m 6) (+ n 1))) (* 3 (+ c k) (+ c k) (+ c k) (+ k m) (+ k m) (+ k m) (+ m 6) (+ m 6) (+ n 1))) (* 3 (+ c k) (+ c k) (+ m 6) (+ m 6) (+ m 6) (+ n 1) (+ n 1))) (* 2 (+ k m) (+ k m) (+ m 6) (+ m 6) (+ m 6) (+ n 1) (+ n 1))) (* 2 (+ c k) (+ c k) (+ k m) (+ k m) (+ k m) (+ m 6) (+ m 6) (+ n 1) (+ n 1)) (* (+ c k) (+ k m) (+ m 6) (+ m 6) (+ m 6) (+ n 1) (+ n 1)) (* (+ c k) (+ c k) (+ k m) (+ k m) (+ k m) (+ k m) (+ m 6) (+ m 6) (+ n 1) (+ n 1))) (* (+ c k) (+ k m) (+ m 6) (+ m 6) (+ m 6) (+ n 1) (+ n 1) (+ n 1)) (* (+ k m) (+ k m) (+ m 6) (+ m 6) (+ m 6) (+ n 1))) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)