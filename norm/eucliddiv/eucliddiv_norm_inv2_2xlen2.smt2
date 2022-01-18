;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		eucliddiv_norm_inv2_2xlen2
; Created:   		2022-01-11 18:12
; Generator of the ideal: 
; 		 -y00 + y
; 		 r - r00 - q00*y00 + q*y00
; Testing invariant: 0*q^3*r^3*r00*y^4 + 0*q^3*r^4*y^4 + 0*q^5*r^4*y^3 + 0*q^5*r^3*r00*y^3 + 0*q^5*q00*r^3*y^3*y00 + 0*q^3*q00*r^3*y^4*y00 + 0*q^4*r^3*y^4*y00 + 0*q^6*r^3*y^3*y00
;--------------------------------------------------------------------------

(set-logic NIA)
(set-option :produce-proofs true)

(declare-const q00 Int)
(declare-const r00 Int)
(declare-const y00 Int)

(assert 
	(exists
		((q Int) (r Int) (y Int))
		(and
			(= (+ (* (- 1) y00) y) 0)
			(= (+ (- r r00 (* q00 y00)) (* q y00)) 0)

			(or
				(not (= (+ (* 0 (+ q 1) (+ q 1) (+ q 1) (- r y00) (- r y00) (- r y00) r00 y00 y00 y00 y00) (* 0 (+ q 1) (+ q 1) (+ q 1) (- r y00) (- r y00) (- r y00) (- r y00) y00 y00 y00 y00) (* 0 (+ q 1) (+ q 1) (+ q 1) (+ q 1) (+ q 1) (- r y00) (- r y00) (- r y00) (- r y00) y00 y00 y00) (* 0 (+ q 1) (+ q 1) (+ q 1) (+ q 1) (+ q 1) (- r y00) (- r y00) (- r y00) r00 y00 y00 y00) (* 0 (+ q 1) (+ q 1) (+ q 1) (+ q 1) (+ q 1) q00 (- r y00) (- r y00) (- r y00) y00 y00 y00 y00) (* 0 (+ q 1) (+ q 1) (+ q 1) q00 (- r y00) (- r y00) (- r y00) y00 y00 y00 y00 y00) (* 0 (+ q 1) (+ q 1) (+ q 1) (+ q 1) (- r y00) (- r y00) (- r y00) y00 y00 y00 y00 y00) (* 0 (+ q 1) (+ q 1) (+ q 1) (+ q 1) (+ q 1) (+ q 1) (- r y00) (- r y00) (- r y00) y00 y00 y00 y00)) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
