;;4.2
; Given the following procedure:

;(define (yawn x)
;  (+ 3 (* x 2)))
;list all the little people that are involved in evaluating

;(yawn (/ 8 2))
;(Give their names, their specialties, their arguments, who hires them,
; and what they do with their answers.)

;-----------------------------------------------------------------------

;Daniel hires Jonas to solve (/ 8 2) and gives 4 as a result.
;Daniel hires Maria to pass 4 to the body of (+ 3 (* x 2)) and gives (+ 3 (* 4 2)).
;Daniel hires Sofia to solve (* 4 2) and gives 8 as a result to Christina.
;Daniel hires Christina to solve (+ 3 8) and gives 11 to Daniel to print it.
