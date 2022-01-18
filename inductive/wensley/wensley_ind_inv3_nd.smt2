; ORIGIN:       https://github.com/ahumenberger/Aligator.jl/blob/master/benchmark/multipath.jl
; INVARIANTS:   -2*b00*y00 + a00*d00 + 2*b00*y - a*d00
;
; SOURCECODE: 
;  while d>= E
;       if P < a+b
;           b = b/2
;           d = d/2
;       else
;           a = a+b
;           y = y+d/2
;           b = b/2
;           d = d/2
;       end
;    end

(set-logic AUFNIRA)
(set-option :produce-proofs true)

(declare-fun a (Int) Real)
(declare-fun b (Int) Real)
(declare-fun d (Int) Real)
(declare-fun y (Int) Real)

(declare-const a00 Real)
(declare-const b00 Real)
(declare-const d00 Real)
(declare-const y00 Real)

(declare-const p Real)

(declare-fun inv (Int) Real)


; Initializsation
(assert
    (and
       (= (a 0) a00)
       (= (b 0) b00)
       (= (d 0) d00)
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
                (or 
                    (and
                        (= (b (+ i 1)) (/ (b i) 2.0))
                        (= (d (+ i 1)) (/ (d i) 2.0))
                        (= (a (+ i 1)) (a i))
                        (= (y (+ i 1)) (y i))
                    )    
                    (and
                        (= (a (+ i 1)) (+ (a i) (b i)))
                        (= (y (+ i 1)) (/ (+ (y i) (d i)) 2.0))
                        (= (b (+ i 1)) (/ (b i) 2.0))
                        (= (d (+ i 1)) (/ (d i) 2.0))
                    )
                )
                (=
                    (inv i)
                    (- (+ (- (* (a i) (d i)) (* 2.0 (b i) (y i))) (* 2.0 (b i) (y 0))) (* (a 0) (d i)))
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
                (= (inv i) 0.0)
            )
        )
    )
)

(check-sat)
(get-proof)
(exit)