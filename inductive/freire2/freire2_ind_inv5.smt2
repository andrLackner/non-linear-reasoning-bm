; ORIGIN:       https://github.com/ahumenberger/Aligator.jl/blob/master/benchmark/singlepath.jl
; INVARIANTS:   216*r00*s00*x00 + 108*r00*x00 - 54*r00*s00 + 15*s^2 - 216*r00^3*s - 36*r00^2*s00^2 - 4*s^3 + 108*x^2 - 432*r00^3*x00 - 12*s^2*s00 + 108*s00*x - 108*r00*s00^2 + 216*r00^3*s00 + 108*s*x00 + 432*r00^3*x - 66*s*s00 + 108*r00*s*s00 - 108*s00*x00 - 216*r00*s00*x + 36*r00^2*s^2 + 16*s00^3 - 108*s*x + 36*r00^2*s + 51*s00^2 - 108*r00*x + 9*s00 - 36*r00^2*s00 - 9*s + 54*r00*s - 216*x*x00 + 108*x00^2
;
; SOURCECODE: 
;   while x-s > 0
;       x = x-s
;       s = s+6*r+3
;       r = r+1
;   end

(set-logic NIA)
(set-option :produce-proofs true)

(declare-fun x (Int) Int)
(declare-fun s (Int) Int)
(declare-fun r (Int) Int)

(declare-const x00 Int)
(declare-const s00 Int)
(declare-const r00 Int)

(declare-fun inv (Int) Int)


; Initializsation
(assert
    (and
        (= (x 0) x00)
        (= (s 0) s00)
        (= (r 0) r00)
    )
)


; Loop body
(assert
    (forall
        ((i Int))
        (=>
            (>= i 0)
            (and
                (= (x (+ i 1)) (- (x i) (s i)))
                (= (s (+ i 1)) (+ (s i) (* 6 (r i)) 3))
                (= (r (+ i 1)) (+ (r i) 1))
                (=
                    (inv i)
                    (+ (- (+ (- (+ (- (+ (- (+ (- (+ (- (+ (- (+ (- (+ (- (+ (- (+ (* 216 (r 0) (s 0) (x 0)) (* 108 (r 0) (x 0))) (* 54 (r 0) (s 0))) (* 15 (s i) (s i))) (* 216 (r 0) (r 0) (r 0) (s i)) (* 36 (r 0) (r 0) (s 0) (s 0)) (* 4 (s i) (s i) (s i))) (* 108 (x i) (x i))) (* 432 (r 0) (r 0) (r 0) (x 0)) (* 12 (s i) (s i) (s 0))) (* 108 (s 0) (x i))) (* 108 (r 0) (s 0) (s 0))) (* 216 (r 0) (r 0) (r 0) (s 0)) (* 108 (s i) (x 0)) (* 432 (r 0) (r 0) (r 0) (x i))) (* 66 (s i) (s 0))) (* 108 (r 0) (s i) (s 0))) (* 108 (s 0) (x 0)) (* 216 (r 0) (s 0) (x i))) (* 36 (r 0) (r 0) (s i) (s i)) (* 16 (s 0) (s 0) (s 0))) (* 108 (s i) (x i))) (* 36 (r 0) (r 0) (s i)) (* 51 (s 0) (s 0))) (* 108 (r 0) (x i))) (* 9 (s 0))) (* 36 (r 0) (r 0) (s 0)) (* 9 (s i))) (* 54 (r 0) (s i))) (* 216 (x i) (x 0))) (* 108 (x 0) (x 0)))
                )
            )
        )
    )
)


(assert
    (not
        (forall
            ((i Int))
            (=>
                (>= i 0)
                (= (inv i) 0)
            )
        )
    )
)

(check-sat)
(get-proof)
(exit)