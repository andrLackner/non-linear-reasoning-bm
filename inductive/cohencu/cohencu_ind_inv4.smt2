; ORIGIN:       https://github.com/ahumenberger/Aligator.jl/blob/master/benchmark/singlepath.jl
; INVARIANTS:   -y00*z*z00 - 12*y*z - 18*x*z + 18*x00*z00 + 12*y^2 - 24*y00^2 + 18*x00*z + 12*y00*z + 6*y00*z00 + 12*y*y00 + 108*x - 72*y00 - 6*y*z00 + 72*y - 108*x00 + y00*z00^2 - 18*x*z00 + y*z*z00 - y*z00^2
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
                    (- (+ (- (+ (- (+ (- (+ (- (+ (- (* (- 1) (y 0) (z i) (z 0)) (* 12 (y i) (z i)) (* 18 (x i) (z i))) (* 18 (x 0) (z 0)) (* 12 (y i) (y i))) (* 24 (y 0) (y 0))) (* 18 (x 0) (z i)) (* 12 (y 0) (z i)) (* 6 (y 0) (z 0)) (* 12 (y i) (y 0)) (* 108 (x i))) (* 72 (y 0)) (* 6 (y i) (z 0))) (* 72 (y i))) (* 108 (x 0))) (* (y 0) (z 0) (z 0))) (* 18 (x i) (z 0))) (* (y i) (z i) (z 0))) (* (y i) (z 0) (z 0)))
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