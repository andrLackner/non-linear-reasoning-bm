;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		euclidex_denorm_inv4_3xlen2
; Created:   		2022-01-11 18:16
; Generator of the ideal: 
; 		 -q*r + p*s - p00*s00 + q00*r00
; 		 -b*r - a00*s00 + a*s + b00*r00
; 		 -a*q + a00*q00 - b00*p00 + b*p
; 		 -b00*p*r00 - a*p00*s00 + b00*p00*r + a*q00*r00 + a00*p*s00 - a00*q00*r
; 		 b*q00*r00 + b00*p00*s - b00*q*r00 - b*p00*s00 + a00*q*s00 - a00*q00*s
; Testing invariant: (-b00*p*r00 - a*p00*s00 + b00*p00*r + a*q00*r00 + a00*p*s00 - a00*q00*r) * (-b^3*p^2*r - b^3*p^3*q^3*r^3*s) * (-a^3*b^3*p^3*q^2*r^2 + a^2*p^3) * (-a*p^2*r*s^3 - a*b*p*q*r)
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
				(not (= (* (- (+ (- (* (- 1) b00 (- p q) r00) (* (- a b) p00 s00)) (* b00 p00 (- r s)) (* (- a b) q00 r00) (* a00 (- p q) s00)) (* a00 q00 (- r s))) (- (* (- 1) b b b (- p q) (- p q) (- r s)) (* b b b (- p q) (- p q) (- p q) q q q (- r s) (- r s) (- r s) s)) (+ (* (- 1) (- a b) (- a b) (- a b) b b b (- p q) (- p q) (- p q) q q (- r s) (- r s)) (* (- a b) (- a b) (- p q) (- p q) (- p q))) (- (* (- 1) (- a b) (- p q) (- p q) (- r s) s s s) (* (- a b) b (- p q) q (- r s)))) 0))
				(not (= (* (- (+ (- (* (- 1) b00 p r00) (* a p00 s00)) (* b00 p00 r) (* a q00 r00) (* a00 p s00)) (* a00 q00 r)) (- (* (- 1) (- b a) (- b a) (- b a) p p r) (* (- b a) (- b a) (- b a) p p p (- q p) (- q p) (- q p) r r r (- s r))) (+ (* (- 1) a a a (- b a) (- b a) (- b a) p p p (- q p) (- q p) r r) (* a a p p p)) (- (* (- 1) a p p r (- s r) (- s r) (- s r)) (* a (- b a) p (- q p) r))) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
