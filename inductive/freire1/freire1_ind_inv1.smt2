; ORIGIN:       https://github.com/ahumenberger/Aligator.jl/blob/master/benchmark/singlepath.jl
; INVARIANTS:   -r + r00 + r^2 + 2*x - 2*x00 - r00^2
;
; SOURCECODE: 
;   while x>r
;       x = x-r
;       r = r+1
;   end

(set-logic NIA)
(set-option :produce-proofs true)

(declare-fun x (Int) Int)
(declare-fun r (Int) Int)

(declare-const x00 Int)
(declare-const r00 Int)

(declare-fun inv (Int) Int)


; Initializsation
(assert
    (and
        (= (x 0) x00)
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
                (= (x (+ i 1)) (- (x i) (r i)))
                (= (r (+ i 1)) (+ (r i) 1))
                (=
                    (inv i)
                    (- (+ (* (- 1) (r i)) (r 0) (* (r i) (r i)) (* 2 (x i))) (* 2 (x 0)) (* (r 0) (r 0)))
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