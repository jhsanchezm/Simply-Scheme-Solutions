;;4.7
; Write a procedure that computes the absolute value of its argument by 
; finding the square root of the square of the argument.
;------------------------------------------------------------------------------------------------

(define (square x)
  (* x x))

(define (absolute-value x)
  (sqrt (square x)))

(absolute-value 3)
