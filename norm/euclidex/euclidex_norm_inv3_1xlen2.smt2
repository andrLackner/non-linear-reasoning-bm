;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		euclidex_norm_inv3_1xlen2
; Created:   		2022-01-11 18:12
; Generator of the ideal: 
; 		 -q*r + p*s - p00*s00 + q00*r00
; 		 -b*r - a00*s00 + a*s + b00*r00
; 		 -a*q + a00*q00 - b00*p00 + b*p
; 		 -b00*p*r00 - a*p00*s00 + b00*p00*r + a*q00*r00 + a00*p*s00 - a00*q00*r
; 		 b*q00*r00 + b00*p00*s - b00*q*r00 - b*p00*s00 + a00*q*s00 - a00*q00*s
; Testing invariant: a^3*a00*b^2*p*q*q00*r^3*s^3 - a^3*b^2*b00*p*p00*q*r^3*s^3 - a^2*b*q^2*r^2*s + a*a00*b*q*q00*r^2*s + a*b^2*p*q*r^2*s + a^3*b^3*p^2*q*r^3*s^3 - a*b*b00*p00*q*r^2*s - a^4*b^2*p*q^2*r^3*s^3
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
				(not (= (- (+ (- (* (- a b) (- a b) (- a b) a00 b b (- p q) q q00 (- r s) (- r s) (- r s) s s s) (* (- a b) (- a b) (- a b) b b b00 (- p q) p00 q (- r s) (- r s) (- r s) s s s) (* (- a b) (- a b) b q q (- r s) (- r s) s)) (* (- a b) a00 b q q00 (- r s) (- r s) s) (* (- a b) b b (- p q) q (- r s) (- r s) s) (* (- a b) (- a b) (- a b) b b b (- p q) (- p q) q (- r s) (- r s) (- r s) s s s)) (* (- a b) b b00 p00 q (- r s) (- r s) s) (* (- a b) (- a b) (- a b) (- a b) b b (- p q) q q (- r s) (- r s) (- r s) s s s)) 0))
				(not (= (- (+ (- (* a a a a00 (- b a) (- b a) p (- q p) q00 r r r (- s r) (- s r) (- s r)) (* a a a (- b a) (- b a) b00 p p00 (- q p) r r r (- s r) (- s r) (- s r)) (* a a (- b a) (- q p) (- q p) r r (- s r))) (* a a00 (- b a) (- q p) q00 r r (- s r)) (* a (- b a) (- b a) p (- q p) r r (- s r)) (* a a a (- b a) (- b a) (- b a) p p (- q p) r r r (- s r) (- s r) (- s r))) (* a (- b a) b00 p00 (- q p) r r (- s r)) (* a a a a (- b a) (- b a) p (- q p) (- q p) r r r (- s r) (- s r) (- s r))) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
