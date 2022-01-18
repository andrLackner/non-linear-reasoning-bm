; ORIGIN:       https://github.com/ahumenberger/Aligator.jl/blob/master/benchmark/singlepath.jl
; INVARIANTS:   x - y00 - x00 + y
;
; SOURCECODE: 
;   while true
;       x = x-1
;       y = y+1
;   end

(set-logic NIA)
(set-option :produce-proofs true)

(declare-fun x (Int) Int)
(declare-fun y (Int) Int)

(declare-const x00 Int)
(declare-const y00 Int)

(declare-fun inv (Int) Int)


; Initializsation
(assert
    (and
        (= (x 0) x00)
        (= (y 0) y00)
    )
)


; Loop body
(assert
    (forall
        ((i Int))
        (=>
            (>= i 0)
            (and
                (= (x (+ i 1)) (- (x i) 1))
                (= (y (+ i 1)) (+ (y i) 1))
                (=
                    (inv i)
                    (+ (- (x i) (y 0) (x 0)) (y i))
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