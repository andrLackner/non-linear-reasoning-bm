; ORIGIN:       https://github.com/ahumenberger/Aligator.jl/blob/master/benchmark/multipath.jl
; INVARIANTS:   8*r - 8*r00 + 4*d*x - 4*d00*x00 - d00^2*q00 + d^2*q - 2*d*q + 2*d00*q00 - 4*d*r + 4*d00*r00
;
; SOURCECODE: 
;    while (s >= d) && (r != 0)
;       if 2*r-x+q < 0
;           t  = r
;           r  = 2*r-x+q+d+2
;           x = t
;           q  = q+4
;           d  = d+2
;       elseif (2*r-x+q >= 0) && (2*r-x+q < d+2)
;           t  = r
;           r  = 2*r-x+q
;           x = t
;           d  = d+2
;       elseif (2*r-x+q >= 0) && (2*r-x+q >= d+2) && (2*r-x+q < 2*d+4)
;           t  = r
;           r  = 2*r-x+q-d-2
;           x = t
;           q  = q-4
;           d  = d+2
;       else # ((2*r-x+q >= 0) && (2*r-x+q >= 2*d+4))
;           t  = r
;           r  = 2*r-x+q-2*d-4
;           x = t
;           q  = q-8
;           d  = d+2
;       end
;   end

(set-logic NIA)
(set-option :produce-proofs true)

(declare-fun s (Int) Int)
(declare-fun d (Int) Int)
(declare-fun r (Int) Int)
(declare-fun x (Int) Int)
(declare-fun q (Int) Int)
(declare-fun t (Int) Int)

(declare-const s00 Int)
(declare-const d00 Int)
(declare-const r00 Int)
(declare-const x00 Int)
(declare-const q00 Int)
(declare-const t00 Int)

(declare-fun inv (Int) Int)


; Initializsation
(assert
    (and
        (= (s 0) s00)
        (= (d 0) d00)
        (= (r 0) r00)
        (= (x 0) x00)
        (= (q 0) q00)
        (= (t 0) t00)
    )
)


; Loop body
(assert
    (forall
        ((i Int))
        (=>
            (>= i 0)
            (and
                (or
                    (and
                        (= (t (+ i 1)) (r i))
                        (= (r (+ i 1)) (- (+ 2 (q i) (* 2 (r i)) (d i)) (x i)))
                        (= (x (+ i 1)) (t i))
                        (= (q (+ i 1)) (+ (q i) 4))
                        (= (d (+ i 1)) (+ (d i) 2))
                        (= (s (+ i 1)) (s i))
                    )
                    (and
                        (= (t (+ i 1)) (r i))
                        (= (r (+ i 1)) (- (+ (q i) (* 2 (r i))) (x i)))
                        (= (x (+ i 1)) (t i))
                        (= (q (+ i 1)) (q i))
                        (= (d (+ i 1)) (+ (d i) 2))
                        (= (s (+ i 1)) (s i))
                    )
                    (and
                        (= (t (+ i 1)) (r i))
                        (= (r (+ i 1)) (- (+ (* (- 2) 1) (q i) (* 2 (r i))) (d i) (x i)))
                        (= (x (+ i 1)) (t i))
                        (= (q (+ i 1)) (- (q i) 4))
                        (= (d (+ i 1)) (+ (d i) 2))
                        (= (s (+ i 1)) (s i))
                    )
                    (and
                        (= (t (+ i 1)) (r i))
                        (= (r (+ i 1)) (- (+ (* (- 4) 1) (q i) (* 2 (r i))) (* 2 (d i)) (x i)))
                        (= (x (+ i 1)) (t i))
                        (= (q (+ i 1)) (- (q i) 8))
                        (= (d (+ i 1)) (+ (d i) 2))
                        (= (s (+ i 1)) (s i))
                    )
                )
                (=
                    (inv i)
                    (+ (- (+ (- (+ (- (+ (- (* 8 (r i)) (* 8 (r 0))) (* 4 (d i) (x i))) (* 4 (d 0) (x 0)) (* (d 0) (d 0) (q 0))) (* (d i) (d i) (q i))) (* 2 (d i) (q i))) (* 2 (d 0) (q 0))) (* 4 (d i) (r i))) (* 4 (d 0) (r 0)))
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