; ORIGIN:       https://github.com/ahumenberger/Aligator.jl/blob/master/benchmark/multipath.jl
; INVARIANTS:   b*q00*r00 + b00*p00*s - b00*q*r00 - b*p00*s00 + a00*q*s00 - a00*q00*s
;
; SOURCECODE: 
;   while r != 0
;       if r > 0
;           r = r - v
;           v = v + 2
;       else
;           r = r + u
;           u = u + 2
;       end
;   end

(set-logic NIA)
(set-option :produce-proofs true)

(declare-fun r (Int) Int)
(declare-fun v (Int) Int)
(declare-fun u (Int) Int)

(declare-const r00 Int)
(declare-const v00 Int)
(declare-const u00 Int)


; Initializsation
(assert
    (and
        (= r00 0)
        (= v00 0)
        (= u00 0)
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
                    (> (r i) 0)
                    (and
                        (= (r (+ i 1)) (- (r i) (v i)))
                        (= (v (+ i 1)) (+ (v i) 2))
                        (= (u (+ i 1)) (u i))
                    )
                )
                (=>
                    (<= (r i) 0)
                    (and
                        (= (r (+ i 1)) (+ (r i) (u i)))
                        (= (u (+ i 1)) (+ (u i) 2))
                        (= (v (+ i 1)) (v i))
                    )
                )
                (=
                    (inv i)
                    (- (+ (- (+ (- (+ (- (* 4 (r i)) (* 4 (r 0)) (* 2 (u 0))) (* 2 (u i))) (* 2 (v i))) (* 2 (v 0))) (* (u i) (u i))) (* (v i) (v i)) (* (u 0) (u 0))) (* (v 0) (v 0)))
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