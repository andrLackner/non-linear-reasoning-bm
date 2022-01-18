;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		euclidex_norm_inv1_2xlen2
; Created:   		2022-01-11 18:12
; Generator of the ideal: 
; 		 -q*r + p*s - p00*s00 + q00*r00
; 		 -b*r - a00*s00 + a*s + b00*r00
; 		 -a*q + a00*q00 - b00*p00 + b*p
; 		 -b00*p*r00 - a*p00*s00 + b00*p00*r + a*q00*r00 + a00*p*s00 - a00*q00*r
; 		 b*q00*r00 + b00*p00*s - b00*q*r00 - b*p00*s00 + a00*q*s00 - a00*q00*s
; Testing invariant: b^3*p^3*q^2*q00*r^2*r00*s^4 - a^3*b^3*p^3*q^3*r^4*s^4 - a^3*b^3*p^4*q^4*q00*r^2*r00*s^4 + a^3*b^3*p^4*q^2*r^3*s^5 - a^6*b^3*p^4*q^4*q00*r^3*r00*s^4 + a^6*b^3*p^4*q^5*r^4*s^4 + a^6*b^3*p^4*p00*q^4*r^3*s^4*s00 - a^6*b^3*p^5*q^4*r^3*s^5 - a^3*b^3*p^3*p00*q^2*r^3*s^4*s00 - b^3*p^3*q^3*r^3*s^4 + a^3*b^3*p^4*q^5*r^3*s^4 + b^3*p^4*q^2*r^2*s^5 + a^3*b^3*p^3*q^2*q00*r^3*r00*s^4 - a^3*b^3*p^5*q^4*r^2*s^5 - b^3*p^3*p00*q^2*r^2*s^4*s00 + a^3*b^3*p^4*p00*q^4*r^2*s^4*s00
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
				(not (= (+ (- (+ (- (+ (- (+ (- (* b b b (- p q) (- p q) (- p q) q q q00 (- r s) (- r s) r00 s s s s) (* (- a b) (- a b) (- a b) b b b (- p q) (- p q) (- p q) q q q (- r s) (- r s) (- r s) (- r s) s s s s) (* (- a b) (- a b) (- a b) b b b (- p q) (- p q) (- p q) (- p q) q q q q q00 (- r s) (- r s) r00 s s s s)) (* (- a b) (- a b) (- a b) b b b (- p q) (- p q) (- p q) (- p q) q q (- r s) (- r s) (- r s) s s s s s)) (* (- a b) (- a b) (- a b) (- a b) (- a b) (- a b) b b b (- p q) (- p q) (- p q) (- p q) q q q q q00 (- r s) (- r s) (- r s) r00 s s s s)) (* (- a b) (- a b) (- a b) (- a b) (- a b) (- a b) b b b (- p q) (- p q) (- p q) (- p q) q q q q q (- r s) (- r s) (- r s) (- r s) s s s s) (* (- a b) (- a b) (- a b) (- a b) (- a b) (- a b) b b b (- p q) (- p q) (- p q) (- p q) p00 q q q q (- r s) (- r s) (- r s) s s s s s00)) (* (- a b) (- a b) (- a b) (- a b) (- a b) (- a b) b b b (- p q) (- p q) (- p q) (- p q) (- p q) q q q q (- r s) (- r s) (- r s) s s s s s) (* (- a b) (- a b) (- a b) b b b (- p q) (- p q) (- p q) p00 q q (- r s) (- r s) (- r s) s s s s s00) (* b b b (- p q) (- p q) (- p q) q q q (- r s) (- r s) (- r s) s s s s)) (* (- a b) (- a b) (- a b) b b b (- p q) (- p q) (- p q) (- p q) q q q q q (- r s) (- r s) (- r s) s s s s) (* b b b (- p q) (- p q) (- p q) (- p q) q q (- r s) (- r s) s s s s s) (* (- a b) (- a b) (- a b) b b b (- p q) (- p q) (- p q) q q q00 (- r s) (- r s) (- r s) r00 s s s s)) (* (- a b) (- a b) (- a b) b b b (- p q) (- p q) (- p q) (- p q) (- p q) q q q q (- r s) (- r s) s s s s s) (* b b b (- p q) (- p q) (- p q) p00 q q (- r s) (- r s) s s s s s00)) (* (- a b) (- a b) (- a b) b b b (- p q) (- p q) (- p q) (- p q) p00 q q q q (- r s) (- r s) s s s s s00)) 0))
				(not (= (+ (- (+ (- (+ (- (+ (- (* (- b a) (- b a) (- b a) p p p (- q p) (- q p) q00 r r r00 (- s r) (- s r) (- s r) (- s r)) (* a a a (- b a) (- b a) (- b a) p p p (- q p) (- q p) (- q p) r r r r (- s r) (- s r) (- s r) (- s r)) (* a a a (- b a) (- b a) (- b a) p p p p (- q p) (- q p) (- q p) (- q p) q00 r r r00 (- s r) (- s r) (- s r) (- s r))) (* a a a (- b a) (- b a) (- b a) p p p p (- q p) (- q p) r r r (- s r) (- s r) (- s r) (- s r) (- s r))) (* a a a a a a (- b a) (- b a) (- b a) p p p p (- q p) (- q p) (- q p) (- q p) q00 r r r r00 (- s r) (- s r) (- s r) (- s r))) (* a a a a a a (- b a) (- b a) (- b a) p p p p (- q p) (- q p) (- q p) (- q p) (- q p) r r r r (- s r) (- s r) (- s r) (- s r)) (* a a a a a a (- b a) (- b a) (- b a) p p p p p00 (- q p) (- q p) (- q p) (- q p) r r r (- s r) (- s r) (- s r) (- s r) s00)) (* a a a a a a (- b a) (- b a) (- b a) p p p p p (- q p) (- q p) (- q p) (- q p) r r r (- s r) (- s r) (- s r) (- s r) (- s r)) (* a a a (- b a) (- b a) (- b a) p p p p00 (- q p) (- q p) r r r (- s r) (- s r) (- s r) (- s r) s00) (* (- b a) (- b a) (- b a) p p p (- q p) (- q p) (- q p) r r r (- s r) (- s r) (- s r) (- s r))) (* a a a (- b a) (- b a) (- b a) p p p p (- q p) (- q p) (- q p) (- q p) (- q p) r r r (- s r) (- s r) (- s r) (- s r)) (* (- b a) (- b a) (- b a) p p p p (- q p) (- q p) r r (- s r) (- s r) (- s r) (- s r) (- s r)) (* a a a (- b a) (- b a) (- b a) p p p (- q p) (- q p) q00 r r r r00 (- s r) (- s r) (- s r) (- s r))) (* a a a (- b a) (- b a) (- b a) p p p p p (- q p) (- q p) (- q p) (- q p) r r (- s r) (- s r) (- s r) (- s r) (- s r)) (* (- b a) (- b a) (- b a) p p p p00 (- q p) (- q p) r r (- s r) (- s r) (- s r) (- s r) s00)) (* a a a (- b a) (- b a) (- b a) p p p p p00 (- q p) (- q p) (- q p) (- q p) r r (- s r) (- s r) (- s r) (- s r) s00)) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
