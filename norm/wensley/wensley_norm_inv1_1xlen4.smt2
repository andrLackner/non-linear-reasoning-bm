;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		wensley_norm_inv1_1xlen4
; Created:   		2022-01-11 18:12
; Generator of the ideal: 
; 		 -2*b00*y00 + a00*d00 + 2*b00*y - a*d00
; 		 -b*d00 + b00*d
; 		 a*d - 2*b*y + 2*b*y00 - a00*d
; Testing invariant: a*a00*d^2*d00*y - a^2*a00*b^3*d^3*d00*y^2 + 2*a*b00*d^2*y^2 - a^2*d^2*d00*y - a^2*b^2*d^2*d00 - a^2*b^2*d^3*d00 + 2*a*b^2*b00*d^2*y + 2*a*b^2*b00*d^3*y - 2*a^2*b^3*b00*d^3*y^3 + a^3*b^3*d^3*d00*y^2 - 2*a*b00*d^2*y*y00 - 2*a*b^2*b00*d^3*y00 - 2*a*b^2*b00*d^2*y00 + 2*a^2*b^3*b00*d^3*y^2*y00 + a*a00*b^2*d^3*d00 + a*a00*b^2*d^2*d00
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
				(not (= (+ (- (+ (- (+ (- (+ (- (* a a00 (/ d 2) (/ d 2) d00 y) (* a a a00 (/ b 2) (/ b 2) (/ b 2) (/ d 2) (/ d 2) (/ d 2) d00 y y)) (* 2 a b00 (/ d 2) (/ d 2) y y)) (* a a (/ d 2) (/ d 2) d00 y) (* a a (/ b 2) (/ b 2) (/ d 2) (/ d 2) d00) (* a a (/ b 2) (/ b 2) (/ d 2) (/ d 2) (/ d 2) d00)) (* 2 a (/ b 2) (/ b 2) b00 (/ d 2) (/ d 2) y) (* 2 a (/ b 2) (/ b 2) b00 (/ d 2) (/ d 2) (/ d 2) y)) (* 2 a a (/ b 2) (/ b 2) (/ b 2) b00 (/ d 2) (/ d 2) (/ d 2) y y y)) (* a a a (/ b 2) (/ b 2) (/ b 2) (/ d 2) (/ d 2) (/ d 2) d00 y y)) (* 2 a b00 (/ d 2) (/ d 2) y y00) (* 2 a (/ b 2) (/ b 2) b00 (/ d 2) (/ d 2) (/ d 2) y00) (* 2 a (/ b 2) (/ b 2) b00 (/ d 2) (/ d 2) y00)) (* 2 a a (/ b 2) (/ b 2) (/ b 2) b00 (/ d 2) (/ d 2) (/ d 2) y y y00) (* a a00 (/ b 2) (/ b 2) (/ d 2) (/ d 2) (/ d 2) d00) (* a a00 (/ b 2) (/ b 2) (/ d 2) (/ d 2) d00)) 0))
				(not (= (+ (- (+ (- (+ (- (+ (- (* (+ a b) a00 (/ d 2) (/ d 2) d00 (+ y (/ d 2))) (* (+ a b) (+ a b) a00 (/ b 2) (/ b 2) (/ b 2) (/ d 2) (/ d 2) (/ d 2) d00 (+ y (/ d 2)) (+ y (/ d 2)))) (* 2 (+ a b) b00 (/ d 2) (/ d 2) (+ y (/ d 2)) (+ y (/ d 2)))) (* (+ a b) (+ a b) (/ d 2) (/ d 2) d00 (+ y (/ d 2))) (* (+ a b) (+ a b) (/ b 2) (/ b 2) (/ d 2) (/ d 2) d00) (* (+ a b) (+ a b) (/ b 2) (/ b 2) (/ d 2) (/ d 2) (/ d 2) d00)) (* 2 (+ a b) (/ b 2) (/ b 2) b00 (/ d 2) (/ d 2) (+ y (/ d 2))) (* 2 (+ a b) (/ b 2) (/ b 2) b00 (/ d 2) (/ d 2) (/ d 2) (+ y (/ d 2)))) (* 2 (+ a b) (+ a b) (/ b 2) (/ b 2) (/ b 2) b00 (/ d 2) (/ d 2) (/ d 2) (+ y (/ d 2)) (+ y (/ d 2)) (+ y (/ d 2)))) (* (+ a b) (+ a b) (+ a b) (/ b 2) (/ b 2) (/ b 2) (/ d 2) (/ d 2) (/ d 2) d00 (+ y (/ d 2)) (+ y (/ d 2)))) (* 2 (+ a b) b00 (/ d 2) (/ d 2) (+ y (/ d 2)) y00) (* 2 (+ a b) (/ b 2) (/ b 2) b00 (/ d 2) (/ d 2) (/ d 2) y00) (* 2 (+ a b) (/ b 2) (/ b 2) b00 (/ d 2) (/ d 2) y00)) (* 2 (+ a b) (+ a b) (/ b 2) (/ b 2) (/ b 2) b00 (/ d 2) (/ d 2) (/ d 2) (+ y (/ d 2)) (+ y (/ d 2)) y00) (* (+ a b) a00 (/ b 2) (/ b 2) (/ d 2) (/ d 2) (/ d 2) d00) (* (+ a b) a00 (/ b 2) (/ b 2) (/ d 2) (/ d 2) d00)) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
