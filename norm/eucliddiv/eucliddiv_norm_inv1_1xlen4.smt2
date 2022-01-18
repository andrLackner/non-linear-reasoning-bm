;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		eucliddiv_norm_inv1_1xlen4
; Created:   		2022-01-11 18:11
; Generator of the ideal: 
; 		 -y00 + y
; 		 r - r00 - q00*y00 + q*y00
; Testing invariant: q^2*y^2 + q*r*y^3 - q^2*y*y00 + q*r*y00 - q*r*y^2*y00 - q^3*y - q*r*y + q^3*y00
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
				(not (= (+ (- (+ (- (+ (* (+ q 1) (+ q 1) y00 y00) (* (+ q 1) (- r y00) y00 y00 y00)) (* (+ q 1) (+ q 1) y00 y00)) (* (+ q 1) (- r y00) y00)) (* (+ q 1) (- r y00) y00 y00 y00) (* (+ q 1) (+ q 1) (+ q 1) y00) (* (+ q 1) (- r y00) y00)) (* (+ q 1) (+ q 1) (+ q 1) y00)) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
