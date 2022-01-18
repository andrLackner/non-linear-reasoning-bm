; ORIGIN:       https://github.com/ahumenberger/Aligator.jl/blob/master/benchmark/multipath.jl
; INVARIANTS:   -x00*y00 + x*y + z - z00
;
; SOURCECODE: 
;  while y!=0  
;       if y % 2 ==1 
;           z = z+x;
;           y = y-1;
;       end
;       x = 2*x;
;       y = y/2;
;   end

(set-logic NIA)
(set-option :produce-proofs true)

(declare-fun y (Int) Int)
(declare-fun x (Int) Int)
(declare-fun z (Int) Int)

(declare-const x00 Int)
(declare-const y00 Int)
(declare-const z00 Int)

(declare-fun inv (Int) Int)


; Initializsation
(assert
    (and
        (= (x 0) x00)
        (= (y 0) y00)
        (= (z 0) z00)
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
                        (= (x (+ i 1)) (* (x i) 2))
                        (= (y (+ i 1)) (div (- (y i) 1) 2))
                        (= (z (+ i 1)) (+ (z i) (x i)))
                    )
                    (and
                        (= (x (+ i 1)) (x i))
                        (= (y (+ i 1)) (div (y i) 2))
                        (= (z (+ i 1)) (z i))
                    )
                )
                (=
                    (inv i)
                    (- (+ (* (- 1) (x 0) (y 0)) (* (x i) (y i)) (z i)) (z 0))
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