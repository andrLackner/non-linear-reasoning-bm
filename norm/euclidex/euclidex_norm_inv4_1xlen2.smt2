;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		euclidex_norm_inv4_1xlen2
; Created:   		2022-01-11 18:12
; Generator of the ideal: 
; 		 -q*r + p*s - p00*s00 + q00*r00
; 		 -b*r - a00*s00 + a*s + b00*r00
; 		 -a*q + a00*q00 - b00*p00 + b*p
; 		 -b00*p*r00 - a*p00*s00 + b00*p00*r + a*q00*r00 + a00*p*s00 - a00*q00*r
; 		 b*q00*r00 + b00*p00*s - b00*q*r00 - b*p00*s00 + a00*q*s00 - a00*q00*s
; Testing invariant: -a*b00*p^3*r^3*r00*s^2 + a^3*b*p^2*p00*r^3*s^2*s00 - a^2*p^2*p00*r^3*s^2*s00 - a^2*a00*b*p^3*r^3*s^2*s00 + a*a00*p^3*r^3*s^2*s00 - a^2*b*b00*p^2*p00*r^4*s^2 + a^2*a00*b*p^2*q00*r^4*s^2 + a^2*b*b00*p^3*r^3*r00*s^2 + a*b00*p^2*p00*r^4*s^2 - a*a00*p^2*q00*r^4*s^2 - a^3*b*p^2*q00*r^3*r00*s^2 + a^2*p^2*q00*r^3*r00*s^2
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
				(not (= (+ (- (+ (- (+ (- (+ (* (- 1) (- a b) b00 (- p q) (- p q) (- p q) (- r s) (- r s) (- r s) r00 s s) (* (- a b) (- a b) (- a b) b (- p q) (- p q) p00 (- r s) (- r s) (- r s) s s s00)) (* (- a b) (- a b) (- p q) (- p q) p00 (- r s) (- r s) (- r s) s s s00) (* (- a b) (- a b) a00 b (- p q) (- p q) (- p q) (- r s) (- r s) (- r s) s s s00)) (* (- a b) a00 (- p q) (- p q) (- p q) (- r s) (- r s) (- r s) s s s00)) (* (- a b) (- a b) b b00 (- p q) (- p q) p00 (- r s) (- r s) (- r s) (- r s) s s)) (* (- a b) (- a b) a00 b (- p q) (- p q) q00 (- r s) (- r s) (- r s) (- r s) s s) (* (- a b) (- a b) b b00 (- p q) (- p q) (- p q) (- r s) (- r s) (- r s) r00 s s) (* (- a b) b00 (- p q) (- p q) p00 (- r s) (- r s) (- r s) (- r s) s s)) (* (- a b) a00 (- p q) (- p q) q00 (- r s) (- r s) (- r s) (- r s) s s) (* (- a b) (- a b) (- a b) b (- p q) (- p q) q00 (- r s) (- r s) (- r s) r00 s s)) (* (- a b) (- a b) (- p q) (- p q) q00 (- r s) (- r s) (- r s) r00 s s)) 0))
				(not (= (+ (- (+ (- (+ (- (+ (* (- 1) a b00 p p p r r r r00 (- s r) (- s r)) (* a a a (- b a) p p p00 r r r (- s r) (- s r) s00)) (* a a p p p00 r r r (- s r) (- s r) s00) (* a a a00 (- b a) p p p r r r (- s r) (- s r) s00)) (* a a00 p p p r r r (- s r) (- s r) s00)) (* a a (- b a) b00 p p p00 r r r r (- s r) (- s r))) (* a a a00 (- b a) p p q00 r r r r (- s r) (- s r)) (* a a (- b a) b00 p p p r r r r00 (- s r) (- s r)) (* a b00 p p p00 r r r r (- s r) (- s r))) (* a a00 p p q00 r r r r (- s r) (- s r)) (* a a a (- b a) p p q00 r r r r00 (- s r) (- s r))) (* a a p p q00 r r r r00 (- s r) (- s r))) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
