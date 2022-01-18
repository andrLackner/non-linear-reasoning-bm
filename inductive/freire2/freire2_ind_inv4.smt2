; ORIGIN:       https://github.com/ahumenberger/Aligator.jl/blob/master/benchmark/singlepath.jl
; INVARIANTS:   -24*r*s - 54*r00*x00 + 36*r*r00*x + 24*r00*s00 + 3*s^2 + 54*r*x - 6*s00*x + 4*r00*s^2 - 2*r00*s00^2 - 6*s*x00 + 12*s*s00 - 2*r00*s*s00 + 6*s00*x00 + 2*r*s^2 + 6*s*x - 4*r*s00^2 - 36*r00^2*s - 36*r00^2*x00 - 15*s00^2 + 2*r*s*s00 - 36*r*r00*x00 + 54*r00*x - 9*s00 + 36*r00^2*s00 - 54*r*x00 + 9*s + 24*r*s00 - 24*r00*s + 36*r00^2*x
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
                    (+ (- (+ (- (+ (- (+ (- (+ (- (+ (- (+ (- (+ (- (+ (- (* (- 24) (r i) (s i)) (* 54 (r 0) (x 0))) (* 36 (r i) (r 0) (x i)) (* 24 (r 0) (s 0)) (* 3 (s i) (s i)) (* 54 (r i) (x i))) (* 6 (s 0) (x i))) (* 4 (r 0) (s i) (s i))) (* 2 (r 0) (s 0) (s 0)) (* 6 (s i) (x 0))) (* 12 (s i) (s 0))) (* 2 (r 0) (s i) (s 0))) (* 6 (s 0) (x 0)) (* 2 (r i) (s i) (s i)) (* 6 (s i) (x i))) (* 4 (r i) (s 0) (s 0)) (* 36 (r 0) (r 0) (s i)) (* 36 (r 0) (r 0) (x 0)) (* 15 (s 0) (s 0))) (* 2 (r i) (s i) (s 0))) (* 36 (r i) (r 0) (x 0))) (* 54 (r 0) (x i))) (* 9 (s 0))) (* 36 (r 0) (r 0) (s 0))) (* 54 (r i) (x 0))) (* 9 (s i)) (* 24 (r i) (s 0))) (* 24 (r 0) (s i))) (* 36 (r 0) (r 0) (x i)))
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