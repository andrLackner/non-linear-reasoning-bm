;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		euclidex_denorm_inv3_3xlen1
; Created:   		2022-01-11 18:16
; Generator of the ideal: 
; 		 -q*r + p*s - p00*s00 + q00*r00
; 		 -b*r - a00*s00 + a*s + b00*r00
; 		 -a*q + a00*q00 - b00*p00 + b*p
; 		 -b00*p*r00 - a*p00*s00 + b00*p00*r + a*q00*r00 + a00*p*s00 - a00*q00*r
; 		 b*q00*r00 + b00*p00*s - b00*q*r00 - b*p00*s00 + a00*q*s00 - a00*q00*s
; Testing invariant: (-a*q + a00*q00 - b00*p00 + b*p) * (-a*p^3*q*r^3*s^2) * (a^3*b^3*p*q^3*r^2) * (a*b*p^2*s)
;--------------------------------------------------------------------------

(set-logic NIA)
(set-option :produce-proofs true)

(declare-const p00 Int)
(declare-const a00 Int)
(declare-const q00 Int)
(declare-const b00 Int)
(declare-const r00 Int)
(declare-const s00 Int)

(assert 
	(exists
		((p Int) (a Int) (q Int) (b Int) (r Int) (s Int))
		(and
			(= (+ (- (+ (* (- 1) q r) (* p s)) (* p00 s00)) (* q00 r00)) 0)
			(= (+ (- (* (- 1) b r) (* a00 s00)) (* a s) (* b00 r00)) 0)
			(= (+ (- (+ (* (- 1) a q) (* a00 q00)) (* b00 p00)) (* b p)) 0)
			(= (- (+ (- (* (- 1) b00 p r00) (* a p00 s00)) (* b00 p00 r) (* a q00 r00) (* a00 p s00)) (* a00 q00 r)) 0)
			(= (- (+ (- (+ (* b q00 r00) (* b00 p00 s)) (* b00 q r00) (* b p00 s00)) (* a00 q s00)) (* a00 q00 s)) 0)

			(or
				(not (= (* (+ (- (+ (* (- 1) (- a b) q) (* a00 q00)) (* b00 p00)) (* b (- p q))) (- 1) (- a b) (- p q) (- p q) (- p q) q (- r s) (- r s) (- r s) s s (- a b) (- a b) (- a b) b b b (- p q) q q q (- r s) (- r s) (- a b) b (- p q) (- p q) s) 0))
				(not (= (* (+ (- (+ (* (- 1) a (- q p)) (* a00 q00)) (* b00 p00)) (* (- b a) p)) (- 1) a p p p (- q p) r r r (- s r) (- s r) a a a (- b a) (- b a) (- b a) p (- q p) (- q p) (- q p) r r a (- b a) p p (- s r)) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
