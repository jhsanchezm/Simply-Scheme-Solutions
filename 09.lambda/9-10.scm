;; 9.10

; In Chapter 2 we used a function called appearances that returns the number of times its first argument
; appears as a member of its second argument. Implement appearances.

;---------------------------------------------------------------------------------------------------------

(define (appearances arg1 arg2)
  (count (keep (lambda (x) (member? x arg1)) arg2)))

(appearances '2485 '228759)