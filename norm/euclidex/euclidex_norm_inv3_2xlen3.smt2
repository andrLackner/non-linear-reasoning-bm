;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		euclidex_norm_inv3_2xlen3
; Created:   		2022-01-11 18:12
; Generator of the ideal: 
; 		 -q*r + p*s - p00*s00 + q00*r00
; 		 -b*r - a00*s00 + a*s + b00*r00
; 		 -a*q + a00*q00 - b00*p00 + b*p
; 		 -b00*p*r00 - a*p00*s00 + b00*p00*r + a*q00*r00 + a00*p*s00 - a00*q00*r
; 		 b*q00*r00 + b00*p00*s - b00*q*r00 - b*p00*s00 + a00*q*s00 - a00*q00*s
; Testing invariant: b^2*p^5*q^2*r^2*s^2 - a^2*b^2*b00*p^2*p00*q^3*r*s^3 - a*a00*b*p*q^5*q00*r^2*s^4 - b*b00*p^4*p00*q^2*r^2*s^2 - a^2*b^4*p^2*q^4*r^2*s^6 - b^5*p^3*q^5*r^4*s + a^2*b^3*b00*p*p00*q^4*r^2*s^6 + a*a00*b^5*p^3*q^3*q00*r^3 - a*b^2*p^2*q^5*r^2*s^4 + a*a00*b^3*p^4*q*q00*r^2*s^4 + a*b^6*b00*p^2*p00*q^4*r^4*s^3 + a00*b*p^4*q^2*q00*r^2*s^2 - a^2*b^3*p^4*q^2*r^2*s^4 - a*b^5*b00*p^3*p00*q^3*r^3 - a*a00*b^6*p^2*q^4*q00*r^4*s^3 - a*a00*b^2*p^5*q00*r*s - a*b^3*p^6*r*s + a^2*b^3*p^3*q^3*r*s^3 + a*b*b00*p*p00*q^5*r^2*s^4 - a^2*a00*b^3*p*q^4*q00*r^2*s^6 + a*b^2*b00*p^5*p00*r*s + a^3*b^3*p*q^5*r^2*s^6 + a^2*a00*b^2*p^2*q^3*q00*r*s^3 + a*b^4*p^5*q*r^2*s^4 + a^2*b*p*q^6*r^2*s^4 - a^2*b^5*p^3*q^4*r^3 + a^2*b^6*p^2*q^5*r^4*s^3 + a^2*b^2*p^5*q*r*s - a^3*b^2*p^2*q^4*r*s^3 + a*b^6*p^4*q^3*r^3 + a*b^4*p^2*q^6*r^4*s + b^4*b00*p^2*p00*q^5*r^4*s - a*b^3*b00*p^4*p00*q*r^2*s^4 - a00*b^4*p^2*q^5*q00*r^4*s - a*b^7*p^3*q^4*r^4*s^3 - a*b*p^4*q^3*r^2*s^2
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
				(not (= (- (+ (- (+ (- (+ (- (+ (- (+ (- (+ (- (* b b (- p q) (- p q) (- p q) (- p q) (- p q) q q (- r s) (- r s) s s) (* (- a b) (- a b) b b b00 (- p q) (- p q) p00 q q q (- r s) s s s) (* (- a b) a00 b (- p q) q q q q q q00 (- r s) (- r s) s s s s) (* b b00 (- p q) (- p q) (- p q) (- p q) p00 q q (- r s) (- r s) s s) (* (- a b) (- a b) b b b b (- p q) (- p q) q q q q (- r s) (- r s) s s s s s s) (* b b b b b (- p q) (- p q) (- p q) q q q q q (- r s) (- r s) (- r s) (- r s) s)) (* (- a b) (- a b) b b b b00 (- p q) p00 q q q q (- r s) (- r s) s s s s s s) (* (- a b) a00 b b b b b (- p q) (- p q) (- p q) q q q q00 (- r s) (- r s) (- r s))) (* (- a b) b b (- p q) (- p q) q q q q q (- r s) (- r s) s s s s)) (* (- a b) a00 b b b (- p q) (- p q) (- p q) (- p q) q q00 (- r s) (- r s) s s s s) (* (- a b) b b b b b b b00 (- p q) (- p q) p00 q q q q (- r s) (- r s) (- r s) (- r s) s s s) (* a00 b (- p q) (- p q) (- p q) (- p q) q q q00 (- r s) (- r s) s s)) (* (- a b) (- a b) b b b (- p q) (- p q) (- p q) (- p q) q q (- r s) (- r s) s s s s) (* (- a b) b b b b b b00 (- p q) (- p q) (- p q) p00 q q q (- r s) (- r s) (- r s)) (* (- a b) a00 b b b b b b (- p q) (- p q) q q q q q00 (- r s) (- r s) (- r s) (- r s) s s s) (* (- a b) a00 b b (- p q) (- p q) (- p q) (- p q) (- p q) q00 (- r s) s) (* (- a b) b b b (- p q) (- p q) (- p q) (- p q) (- p q) (- p q) (- r s) s)) (* (- a b) (- a b) b b b (- p q) (- p q) (- p q) q q q (- r s) s s s) (* (- a b) b b00 (- p q) p00 q q q q q (- r s) (- r s) s s s s)) (* (- a b) (- a b) a00 b b b (- p q) q q q q q00 (- r s) (- r s) s s s s s s)) (* (- a b) b b b00 (- p q) (- p q) (- p q) (- p q) (- p q) p00 (- r s) s) (* (- a b) (- a b) (- a b) b b b (- p q) q q q q q (- r s) (- r s) s s s s s s) (* (- a b) (- a b) a00 b b (- p q) (- p q) q q q q00 (- r s) s s s) (* (- a b) b b b b (- p q) (- p q) (- p q) (- p q) (- p q) q (- r s) (- r s) s s s s) (* (- a b) (- a b) b (- p q) q q q q q q (- r s) (- r s) s s s s)) (* (- a b) (- a b) b b b b b (- p q) (- p q) (- p q) q q q q (- r s) (- r s) (- r s))) (* (- a b) (- a b) b b b b b b (- p q) (- p q) q q q q q (- r s) (- r s) (- r s) (- r s) s s s) (* (- a b) (- a b) b b (- p q) (- p q) (- p q) (- p q) (- p q) q (- r s) s)) (* (- a b) (- a b) (- a b) b b (- p q) (- p q) q q q q (- r s) s s s)) (* (- a b) b b b b b b (- p q) (- p q) (- p q) (- p q) q q q (- r s) (- r s) (- r s)) (* (- a b) b b b b (- p q) (- p q) q q q q q q (- r s) (- r s) (- r s) (- r s) s) (* b b b b b00 (- p q) (- p q) p00 q q q q q (- r s) (- r s) (- r s) (- r s) s)) (* (- a b) b b b b00 (- p q) (- p q) (- p q) (- p q) p00 q (- r s) (- r s) s s s s) (* a00 b b b b (- p q) (- p q) q q q q q q00 (- r s) (- r s) (- r s) (- r s) s) (* (- a b) b b b b b b b (- p q) (- p q) (- p q) q q q q (- r s) (- r s) (- r s) (- r s) s s s) (* (- a b) b (- p q) (- p q) (- p q) (- p q) q q q (- r s) (- r s) s s)) 0))
				(not (= (- (+ (- (+ (- (+ (- (+ (- (+ (- (+ (- (* (- b a) (- b a) p p p p p (- q p) (- q p) r r (- s r) (- s r)) (* a a (- b a) (- b a) b00 p p p00 (- q p) (- q p) (- q p) r (- s r) (- s r) (- s r)) (* a a00 (- b a) p (- q p) (- q p) (- q p) (- q p) (- q p) q00 r r (- s r) (- s r) (- s r) (- s r)) (* (- b a) b00 p p p p p00 (- q p) (- q p) r r (- s r) (- s r)) (* a a (- b a) (- b a) (- b a) (- b a) p p (- q p) (- q p) (- q p) (- q p) r r (- s r) (- s r) (- s r) (- s r) (- s r) (- s r)) (* (- b a) (- b a) (- b a) (- b a) (- b a) p p p (- q p) (- q p) (- q p) (- q p) (- q p) r r r r (- s r))) (* a a (- b a) (- b a) (- b a) b00 p p00 (- q p) (- q p) (- q p) (- q p) r r (- s r) (- s r) (- s r) (- s r) (- s r) (- s r)) (* a a00 (- b a) (- b a) (- b a) (- b a) (- b a) p p p (- q p) (- q p) (- q p) q00 r r r)) (* a (- b a) (- b a) p p (- q p) (- q p) (- q p) (- q p) (- q p) r r (- s r) (- s r) (- s r) (- s r))) (* a a00 (- b a) (- b a) (- b a) p p p p (- q p) q00 r r (- s r) (- s r) (- s r) (- s r)) (* a (- b a) (- b a) (- b a) (- b a) (- b a) (- b a) b00 p p p00 (- q p) (- q p) (- q p) (- q p) r r r r (- s r) (- s r) (- s r)) (* a00 (- b a) p p p p (- q p) (- q p) q00 r r (- s r) (- s r))) (* a a (- b a) (- b a) (- b a) p p p p (- q p) (- q p) r r (- s r) (- s r) (- s r) (- s r)) (* a (- b a) (- b a) (- b a) (- b a) (- b a) b00 p p p p00 (- q p) (- q p) (- q p) r r r) (* a a00 (- b a) (- b a) (- b a) (- b a) (- b a) (- b a) p p (- q p) (- q p) (- q p) (- q p) q00 r r r r (- s r) (- s r) (- s r)) (* a a00 (- b a) (- b a) p p p p p q00 r (- s r)) (* a (- b a) (- b a) (- b a) p p p p p p r (- s r))) (* a a (- b a) (- b a) (- b a) p p p (- q p) (- q p) (- q p) r (- s r) (- s r) (- s r)) (* a (- b a) b00 p p00 (- q p) (- q p) (- q p) (- q p) (- q p) r r (- s r) (- s r) (- s r) (- s r))) (* a a a00 (- b a) (- b a) (- b a) p (- q p) (- q p) (- q p) (- q p) q00 r r (- s r) (- s r) (- s r) (- s r) (- s r) (- s r))) (* a (- b a) (- b a) b00 p p p p p p00 r (- s r)) (* a a a (- b a) (- b a) (- b a) p (- q p) (- q p) (- q p) (- q p) (- q p) r r (- s r) (- s r) (- s r) (- s r) (- s r) (- s r)) (* a a a00 (- b a) (- b a) p p (- q p) (- q p) (- q p) q00 r (- s r) (- s r) (- s r)) (* a (- b a) (- b a) (- b a) (- b a) p p p p p (- q p) r r (- s r) (- s r) (- s r) (- s r)) (* a a (- b a) p (- q p) (- q p) (- q p) (- q p) (- q p) (- q p) r r (- s r) (- s r) (- s r) (- s r))) (* a a (- b a) (- b a) (- b a) (- b a) (- b a) p p p (- q p) (- q p) (- q p) (- q p) r r r)) (* a a (- b a) (- b a) (- b a) (- b a) (- b a) (- b a) p p (- q p) (- q p) (- q p) (- q p) (- q p) r r r r (- s r) (- s r) (- s r)) (* a a (- b a) (- b a) p p p p p (- q p) r (- s r))) (* a a a (- b a) (- b a) p p (- q p) (- q p) (- q p) (- q p) r (- s r) (- s r) (- s r))) (* a (- b a) (- b a) (- b a) (- b a) (- b a) (- b a) p p p p (- q p) (- q p) (- q p) r r r) (* a (- b a) (- b a) (- b a) (- b a) p p (- q p) (- q p) (- q p) (- q p) (- q p) (- q p) r r r r (- s r)) (* (- b a) (- b a) (- b a) (- b a) b00 p p p00 (- q p) (- q p) (- q p) (- q p) (- q p) r r r r (- s r))) (* a (- b a) (- b a) (- b a) b00 p p p p p00 (- q p) r r (- s r) (- s r) (- s r) (- s r)) (* a00 (- b a) (- b a) (- b a) (- b a) p p (- q p) (- q p) (- q p) (- q p) (- q p) q00 r r r r (- s r)) (* a (- b a) (- b a) (- b a) (- b a) (- b a) (- b a) (- b a) p p p (- q p) (- q p) (- q p) (- q p) r r r r (- s r) (- s r) (- s r)) (* a (- b a) p p p p (- q p) (- q p) (- q p) r r (- s r) (- s r))) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
