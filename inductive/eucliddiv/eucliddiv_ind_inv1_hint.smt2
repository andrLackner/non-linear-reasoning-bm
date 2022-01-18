; ORIGIN:       https://github.com/ahumenberger/Aligator.jl/blob/master/benchmark/singlepath.jl
; INVARIANTS:   -y00 + y
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
                    (+ (* (- 1) (y 0)) (y i))
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

; Hint
(assert
    (=>
        (and
            (= (inv 0) 0)
            (forall
                ((i Int))
                (=>
                    (>= i 0)
                    (=>
                        (= (inv i) 0)
                        (= (inv (+ i 1)) 0)
                    )
                )
            )
        )
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