; ORIGIN:       https://github.com/ahumenberger/Aligator.jl/blob/master/benchmark/singlepath.jl
; INVARIANTS:   216*x00*y00 + 108*x*y + 36*x00*z00 - 2*x*z00^3 + 18*x*z00^2 - 12*y00^2*z00 - y00^2*z00^2 + 24*y^2 + 108*x^2 - 4*y^3 + 18*y*y00*z00 + 24*y00*z00 - 120*y*y00 - 24*y*z00 + 16*y00^3 - 6*y^2*z00 + 96*y00^2 - 12*y^2*y00 - 36*x00*y00*z00 - 108*x00*y - 18*x00*z00^2 - 216*x*x00 + y00*z00^3 + 2*x00*z00^3 - 216*x*y00 + y^2*z00^2 - 10*y00*z00^2 - 36*x*z00 + 36*x*y00*z00 + 10*y*z00^2 + 108*x00^2 - y*z00^3
;
; SOURCECODE: 
;   while n<=N
;       n = n+1
;       x = x+y
;       y = y+z
;       z = z+6
;   end

(set-logic NIA)
(set-option :produce-proofs true)


(declare-fun n (Int) Int)
(declare-fun x (Int) Int)
(declare-fun y (Int) Int)
(declare-fun z (Int) Int)

(declare-const n00 Int)
(declare-const x00 Int)
(declare-const y00 Int)
(declare-const z00 Int)

(declare-fun inv (Int) Int)


; Initializsation
(assert
    (and
        (= (n 0) n00)
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
                (= (n (+ i 1)) (+ 1 (n i)))
                (= (x (+ i 1)) (+ (x i) (y i)))
                (= (y (+ i 1)) (+ (y i) (z i)))
                (= (z (+ i 1)) (+ (z i) 6))
                (= 
                    (inv i)
                    (- (+ (- (+ (- (+ (- (+ (- (+ (- (+ (- (+ (- (+ (- (+ (* 216 (x 0) ((y i) i)00) (* 108 (x i) (y i)) (* 36 (x 0) ((z i) i)00)) (* 2 (x i) (z 0) (z 0) (z 0))) (* 18 (x i) (z 0) (z 0))) (* 12 (y 0) (y 0) (z 0)) (* (y 0) (y 0) (z 0) (z 0))) (* 24 (y i) (y i)) (* 108 (x i) (x i))) (* 4 (y i) (y i) (y i))) (* 18 (y i) (y 0) (z 0)) (* 24 (y 0) (z 0))) (* 120 (y i) (y 0)) (* 24 (y i) (z 0))) (* 16 (y 0) (y 0) (y 0))) (* 6 (y i) (y i) (z 0))) (* 96 (y 0) (y 0))) (* 12 (y i) (y i) (y 0)) (* 36 (x 0) (y 0) (z 0)) (* 108 (x 0) (y i)) (* 18 (x 0) (z 0) (z 0)) (* 216 (x i) (x 0))) (* (y 0) (z 0) (z 0) (z 0)) (* 2 (x 0) (z 0) (z 0) (z 0))) (* 216 (x i) (y 0))) (* (y i) (y i) (z 0) (z 0))) (* 10 (y 0) (z 0) (z 0)) (* 36 (x i) (z 0))) (* 36 (x i) (y 0) (z 0)) (* 10 (y i) (z 0) (z 0)) (* 108 (x 0) (x 0))) (* (y i) (z 0) (z 0) (z 0)))
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