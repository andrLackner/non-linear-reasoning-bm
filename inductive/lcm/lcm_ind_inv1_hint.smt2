; ORIGIN:       https://github.com/ahumenberger/Aligator.jl/blob/master/benchmark/multipath.jl
; INVARIANTS:   -u00*x00 + u*x + v*y - v00*y00
;
; SOURCECODE: 
;   while x != y
;        if x > y
;            x = x - y
;            v = v + u
;        else
;            y = y - x
;            u = u + v
;        end
;    end

(set-logic NIA)
(set-option :produce-proofs true)

(declare-fun x (Int) Int)
(declare-fun y (Int) Int)
(declare-fun u (Int) Int)
(declare-fun v (Int) Int)

(declare-const x00 Int)
(declare-const y00 Int)
(declare-const u00 Int)
(declare-const v00 Int)

(declare-fun inv (Int) Int)


; Initializsation
(assert
    (and
        (= (x 0) x00)
        (= (y 0) y00)
        (= (u 0) u00)
        (= (v 0) v00)
    )
)


; Loop body
(assert
    (forall
        ((i Int))
        (=>
            (>= i 0)
            (and
                (=>
                    (> (x i) (y i))
                    (
                        (= (x (+ i 1)) (- (x i) (y i)))
                        (= (v (+ i 1)) (+ (v i) (u i)))
                        (= (u (+ i 1)) (u i))
                        (= (y (+ i 1)) (y i))
                    )
                )
                (=>
                    (<= (x i) (y i))
                    (
                        (= (y (+ i 1)) (- (y i) (x i)))
                        (= (u (+ i 1)) (+ (u i) (v i)))
                        (= (v (+ i 1)) (v i))
                        (= (x (+ i 1)) (x i))
                    )
                )
                (=
                    (inv i)
                    (- (+ (* (- 1) (u 0) (x 0)) (* (u i) (x i)) (* (v i) (y i))) (* (v 0) (y 0)))
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