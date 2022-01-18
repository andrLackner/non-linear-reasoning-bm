; ORIGIN:       https://github.com/ahumenberger/Aligator.jl/blob/master/benchmark/multipath.jl
; INVARIANTS:   -b*r - a00*s00 + a*s + b00*r00
;
; SOURCECODE: 
;   while a != b
;        if a > b
;            a = a - b
;            p = p - q
;            r = r - s
;        else
;            q = q - p
;            b = b - a
;            s = s - r
;        end
;    end

(set-logic NIA)
(set-option :produce-proofs true)

(declare-fun a (Int) Int)
(declare-fun b (Int) Int)
(declare-fun p (Int) Int)
(declare-fun q (Int) Int)
(declare-fun r (Int) Int)
(declare-fun s (Int) Int)

(declare-const a00 Int)
(declare-const b00 Int)
(declare-const p00 Int)
(declare-const q00 Int)
(declare-const r00 Int)
(declare-const s00 Int)


(declare-fun inv (Int) Int)


; Initializsation
(assert
    (and
        (= (a 0) a00)
        (= (b 0) b00)
        (= (p 0) p00)
        (= (q 0) q00)
        (= (r 0) r00)
        (= (s 0) s00)
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
                    (> (a i) (b i))
                    (and
                        (= (a (+ i 1)) (- (a i) (b i)))
                        (= (p (+ i 1)) (- (p i) (q i)))
                        (= (r (+ i 1)) (- (r i) (s i)))
                        (= (q (+ i 1)) (q i))
                        (= (b (+ i 1)) (b i))
                        (= (s (+ i 1)) (s i))
                    )
                )
                (=>
                    (<= (a i) (b i))
                    (and
                        (= (q (+ i 1)) (- (q i) (p i)))
                        (= (b (+ i 1)) (- (b i) (a i)))
                        (= (s (+ i 1)) (- (s i) (r i)))
                        (= (r (+ i 1)) (r i))
                        (= (p (+ i 1)) (p i))
                        (= (a (+ i 1)) (a i))
                    )
                )
                (=
                    (inv i)
                    (+ (- (* (- 1) (b i) (r i)) (* (a 0) (s 0))) (* (a i) (s i)) (* (b 0) (r 0)))
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