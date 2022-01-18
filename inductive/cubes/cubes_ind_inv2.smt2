; ORIGIN:       https://github.com/ahumenberger/Aligator.jl/blob/master/benchmark/singlepath.jl
; INVARIANTS:   4 - 18*c - 9*c*n - 5*k + 9*n + k^2
;
; SOURCECODE: 
;   cubes = quote
;   c, k, m, n = 0, 1, 6, 0
;   while true
;       c = c + k
;       k = k + m
;       m = m + 6
;       n = n + 1
;   end

(set-logic NIA)
(set-option :produce-proofs true)


(declare-fun c (Int) Int)
(declare-fun k (Int) Int)
(declare-fun m (Int) Int)
(declare-fun n (Int) Int)

(declare-fun inv (Int) Int)


; Initializsation
(assert
    (and
        (= (c 0) 0)
        (= (k 1) 1)
        (= (m 6) 6)
        (= (n 0) 0)
    )
)


; Loop body
(assert
    (forall
        ((i Int))
        (=>
            (>= i 0)
            (and
                (= (c (+ i 1)) (+ (c i) (k i)))
                (= (k (+ i 1)) (+ (k i) (m i)))
                (= (m (+ i 1)) (+ (m i) 6))
                (= (n (+ i 1)) (+ (n i) 1))
                (=
                    (inv i)
                    (+ (- 4 (* 18 (c i)) (* 9 (c i) (n i)) (* 5 (k i))) (* 9 (n i)) (* (k i) (k i)))
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