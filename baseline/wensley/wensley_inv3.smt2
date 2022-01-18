;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		wensley_inv3
; Created:   		2022-01-05 18:24
; Generator of the ideal: 
; 		 -2*b00*y00 + a00*d00 + 2*b00*y - a*d00
; 		 -b*d00 + b00*d
; 		 a*d - 2*b*y + 2*b*y00 - a00*d
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
				(not (= (- (+ (- (* a (/ d 2)) (* 2 (/ b 2) y)) (* 2 (/ b 2) y00)) (* a00 (/ d 2))) 0))
				(not (= (- (+ (- (* (+ a b) (/ d 2)) (* 2 (/ b 2) (+ y (/ d 2)))) (* 2 (/ b 2) y00)) (* a00 (/ d 2))) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
