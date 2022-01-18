;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		euclidex_norm_inv2_1xlen4
; Created:   		2022-01-11 18:12
; Generator of the ideal: 
; 		 -q*r + p*s - p00*s00 + q00*r00
; 		 -b*r - a00*s00 + a*s + b00*r00
; 		 -a*q + a00*q00 - b00*p00 + b*p
; 		 -b00*p*r00 - a*p00*s00 + b00*p00*r + a*q00*r00 + a00*p*s00 - a00*q00*r
; 		 b*q00*r00 + b00*p00*s - b00*q*r00 - b*p00*s00 + a00*q*s00 - a00*q00*s
; Testing invariant: -a^3*a00*p^2*q*s*s00 + b*b00*q*r*r00*s^2 + a*b*q*r*s^3 - a*b*q^2*r*s^4 + a^3*b00*p^2*q*r00*s + b^2*q^2*r^2*s^3 + a^4*p^2*q*s^2 - a^3*b*p^2*q*r*s + a^3*b*p^2*r^3*s + a^3*a00*p^2*r^2*s*s00 - a^3*b00*p^2*r^2*r00*s - b*b00*q^2*r*r00*s^3 - a^4*p^2*r^2*s^2 - a00*b*q*r*s^2*s00 - b^2*q*r^2*s^2 + a00*b*q^2*r*s^3*s00
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
				(not (= (+ (- (+ (- (+ (- (+ (* (- 1) (- a b) (- a b) (- a b) a00 (- p q) (- p q) q s s00) (* b b00 q (- r s) r00 s s) (* (- a b) b q (- r s) s s s)) (* (- a b) b q q (- r s) s s s s)) (* (- a b) (- a b) (- a b) b00 (- p q) (- p q) q r00 s) (* b b q q (- r s) (- r s) s s s) (* (- a b) (- a b) (- a b) (- a b) (- p q) (- p q) q s s)) (* (- a b) (- a b) (- a b) b (- p q) (- p q) q (- r s) s)) (* (- a b) (- a b) (- a b) b (- p q) (- p q) (- r s) (- r s) (- r s) s) (* (- a b) (- a b) (- a b) a00 (- p q) (- p q) (- r s) (- r s) s s00)) (* (- a b) (- a b) (- a b) b00 (- p q) (- p q) (- r s) (- r s) r00 s) (* b b00 q q (- r s) r00 s s s) (* (- a b) (- a b) (- a b) (- a b) (- p q) (- p q) (- r s) (- r s) s s) (* a00 b q (- r s) s s s00) (* b b q (- r s) (- r s) s s)) (* a00 b q q (- r s) s s s s00)) 0))
				(not (= (+ (- (+ (- (+ (- (+ (* (- 1) a a a a00 p p (- q p) (- s r) s00) (* (- b a) b00 (- q p) r r00 (- s r) (- s r)) (* a (- b a) (- q p) r (- s r) (- s r) (- s r))) (* a (- b a) (- q p) (- q p) r (- s r) (- s r) (- s r) (- s r))) (* a a a b00 p p (- q p) r00 (- s r)) (* (- b a) (- b a) (- q p) (- q p) r r (- s r) (- s r) (- s r)) (* a a a a p p (- q p) (- s r) (- s r))) (* a a a (- b a) p p (- q p) r (- s r))) (* a a a (- b a) p p r r r (- s r)) (* a a a a00 p p r r (- s r) s00)) (* a a a b00 p p r r r00 (- s r)) (* (- b a) b00 (- q p) (- q p) r r00 (- s r) (- s r) (- s r)) (* a a a a p p r r (- s r) (- s r)) (* a00 (- b a) (- q p) r (- s r) (- s r) s00) (* (- b a) (- b a) (- q p) r r (- s r) (- s r))) (* a00 (- b a) (- q p) (- q p) r (- s r) (- s r) (- s r) s00)) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
