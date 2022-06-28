;;5.17
; Write a procedure knight that takes a person's name as its argument
; and returns the name with "Sir" in front of it.

; > (knight '(david wessel))
; (SIR DAVID WESSEL)
;-----------------------------------------------------------------------

(define (knight x)
  (se 'sir x))

(knight '(david wessel))
