;;3.3
;Each of the expressions in the previous exercise is compound. How many subexpressions (not including subexpressions of subexpressions) does each one have?

;For example,

;(* (- 1 (+ 3 4)) 8)
;has three subexpressions; you wouldn't count (+ 3 4).

(+ 3 (* 4 5) (- 10 4))      ;has three subexpressions;

(+ (* (- (/ 8 2) 1) 5) 2)   ;has three subexpressions; you wouldn' count (- (/ 8 2) 1).

(* (+ (- 3 (/ 4 2))
      (sin (* 3 2))
      (- 8 (sqrt 5)))
   (- (/ 2 3)
      4))                   ;has three subexpressions; you wouldn't count (+ (- 3 (/ 4 2))(sin (* 3 2))(- 8 (sqrt 5)))
                            ; and (- (/ 2 3) 4)
