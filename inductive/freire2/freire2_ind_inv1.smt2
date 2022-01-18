; ORIGIN:       https://github.com/ahumenberger/Aligator.jl/blob/master/benchmark/singlepath.jl
; INVARIANTS:   s00 - s + 3*r^2 - 3*r00^2
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
                    (- (+ (- (s 0) (s i)) (* 3 (r i) (r i))) (* 3 (r 0) (r 0)))
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