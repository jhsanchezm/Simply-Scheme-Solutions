;;4.6
; Define a procedure fourth that computes the fourth power of its argument.
; Do this two ways, first using the multiplication function,
; and then using square and not (directly) using multiplication.
;------------------------------------------------------------------------------------------------
(define (square x)
	(* x x))

(define (fourth1 x)              ;Power of 4th using multiplication.
  (* x x x x))

(define (fourth2 x)               ;Power of 4th using the square function.
  (square (square x)))

(fourth1 2)
(fourth2 2)
