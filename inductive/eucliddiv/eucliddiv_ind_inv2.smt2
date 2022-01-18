; ORIGIN:       https://github.com/ahumenberger/Aligator.jl/blob/master/benchmark/singlepath.jl
; INVARIANTS:   r - r00 - q00*y00 + q*y00
;
; SOURCECODE: 
;   while true
;       r = r - y
;       q = q + 1
;   end

(set-logic NIA)
(set-option :produce-proofs true)

(declare-fun r (Int) Int)
(declare-fun q (Int) Int)
(declare-fun y (Int) Int)

(declare-const r00 Int)
(declare-const q00 Int)
(declare-const y00 Int)

(declare-fun inv (Int) Int)


; Initializsation
(assert
    (and
        (not (= r00 0))
        (not (= q00 0))
        (not (= y00 0))
    )
)


; Loop body
(assert
    (forall
        ((i Int))
        (=>
            (>= i 0)
            (and
                (= (r (+ i 1)) (- (r i) (y i)))
                (= (q (+ i 1)) (+ (q i) 1))
                (=
                    (inv i)
                    (+ (- (r i) (r 0) (* (q 0) (y 0))) (* (q i) (y 0)))
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