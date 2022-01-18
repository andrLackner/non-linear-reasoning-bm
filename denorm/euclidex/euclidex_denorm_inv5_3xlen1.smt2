;--------------------------------------------------------------------------
; Benchmark created with Zazu
; Benchmark: 		euclidex_denorm_inv5_3xlen1
; Created:   		2022-01-11 18:16
; Generator of the ideal: 
; 		 -q*r + p*s - p00*s00 + q00*r00
; 		 -b*r - a00*s00 + a*s + b00*r00
; 		 -a*q + a00*q00 - b00*p00 + b*p
; 		 -b00*p*r00 - a*p00*s00 + b00*p00*r + a*q00*r00 + a00*p*s00 - a00*q00*r
; 		 b*q00*r00 + b00*p00*s - b00*q*r00 - b*p00*s00 + a00*q*s00 - a00*q00*s
; Testing invariant: (b*q00*r00 + b00*p00*s - b00*q*r00 - b*p00*s00 + a00*q*s00 - a00*q00*s) * (-a^2*b*p*q*r*s) * (a^3*b*r^2*s^3) * (a*b*p^3*q^2*r^2*s)
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
				(not (= (* (- (+ (- (+ (* b q00 r00) (* b00 p00 s)) (* b00 q r00) (* b p00 s00)) (* a00 q s00)) (* a00 q00 s)) (- 1) (- a b) (- a b) b (- p q) q (- r s) s (- a b) (- a b) (- a b) b (- r s) (- r s) s s s (- a b) b (- p q) (- p q) (- p q) q q (- r s) (- r s) s) 0))
				(not (= (* (- (+ (- (+ (* (- b a) q00 r00) (* b00 p00 (- s r))) (* b00 (- q p) r00) (* (- b a) p00 s00)) (* a00 (- q p) s00)) (* a00 q00 (- s r))) (- 1) a a (- b a) p (- q p) r (- s r) a a a (- b a) r r (- s r) (- s r) (- s r) a (- b a) p p p (- q p) (- q p) r r (- s r)) 0))
			)
		)
	)
)
(check-sat)
(get-proof)
(exit)
