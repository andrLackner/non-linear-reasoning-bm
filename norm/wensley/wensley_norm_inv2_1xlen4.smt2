;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		wensley_norm_inv2_1xlen4
; Created:   		2022-01-11 18:12
; Generator of the ideal: 
; 		 -2*b00*y00 + a00*d00 + 2*b00*y - a*d00
; 		 -b*d00 + b00*d
; 		 a*d - 2*b*y + 2*b*y00 - a00*d
; Testing invariant: -b^2*d00*y + b*d^2*d00*y + a^2*b00*d^3*y^3 + b*b00*d*y - a*b^2*b00*d^2 - b00*d^3*y - a^2*b*d^2*d00*y^3 + a*b^3*d*d00
;--------------------------------------------------------------------------

(set-logic NRA)
(set-option :produce-proofs true)

(declare-const a00 Real)
(declare-const b00 Real)
(declare-const d00 Real)
(declare-const y00 Real)

(assert 
	(exists
		((a Real) (b Real) (d Real) (y Real))
		(and
			(= (- (+ (* (- 2) b00 y00) (* a00 d00) (* 2 b00 y)) (* a d00)) 0)
			(= (+ (* (- 1) b d00) (* b00 d)) 0)
			(= (- (+ (- (* a d) (* 2 b y)) (* 2 b y00)) (* a00 d)) 0)

			(or
				(not (= (+ (- (+ (* (- 1) (/ b 2) (/ b 2) d00 y) (* (/ b 2) (/ d 2) (/ d 2) d00 y) (* a a b00 (/ d 2) (/ d 2) (/ d 2) y y y) (* (/ b 2) b00 (/ d 2) y)) (* a (/ b 2) (/ b 2) b00 (/ d 2) (/ d 2)) (* b00 (/ d 2) (/ d 2) (/ d 2) y) (* a a (/ b 2) (/ d 2) (/ d 2) d00 y y y)) (* a (/ b 2) (/ b 2) (/ b 2) (/ d 2) d00)) 0))
				(not (= (+ (- (+ (* (- 1) (/ b 2) (/ b 2) d00 (+ y (/ d 2))) (* (/ b 2) (/ d 2) (/ d 2) d00 (+ y (/ d 2))) (* (+ a b) (+ a b) b00 (/ d 2) (/ d 2) (/ d 2) (+ y (/ d 2)) (+ y (/ d 2)) (+ y (/ d 2))) (* (/ b 2) b00 (/ d 2) (+ y (/ d 2)))) (* (+ a b) (/ b 2) (/ b 2) b00 (/ d 2) (/ d 2)) (* b00 (/ d 2) (/ d 2) (/ d 2) (+ y (/ d 2))) (* (+ a b) (+ a b) (/ b 2) (/ d 2) (/ d 2) d00 (+ y (/ d 2)) (+ y (/ d 2)) (+ y (/ d 2)))) (* (+ a b) (/ b 2) (/ b 2) (/ b 2) (/ d 2) d00)) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
