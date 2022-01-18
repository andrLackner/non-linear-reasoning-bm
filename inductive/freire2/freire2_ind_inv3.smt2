; ORIGIN:       https://github.com/ahumenberger/Aligator.jl/blob/master/benchmark/singlepath.jl
; INVARIANTS:   -9*r*s - 18*r00*x00 + 9*r00*s00 + 2*s^2 + 18*r*x + 6*r*r00*s - 6*r00^2*s - 4*s00^2 + 18*r00*x - 3*s00 + 6*r00^2*s00 - 18*r*x00 + 3*s + 9*r*s00 + 2*s*s00 - 9*r00*s - 6*r*r00*s00
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
                    (- (+ (- (+ (- (+ (- (+ (- (* (- 9) (r i) (s i)) (* 18 (r 0) (x 0))) (* 9 (r 0) (s 0)) (* 2 (s i) (s i)) (* 18 (r i) (x i)) (* 6 (r i) (r 0) (s i))) (* 6 (r 0) (r 0) (s i)) (* 4 (s 0) (s 0))) (* 18 (r 0) (x i))) (* 3 (s 0))) (* 6 (r 0) (r 0) (s 0))) (* 18 (r i) (x 0))) (* 3 (s i)) (* 9 (r i) (s 0)) (* 2 (s i) (s 0))) (* 9 (r 0) (s i)) (* 6 (r i) (r 0) (s 0)))
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