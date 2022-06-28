;;6.4
; Rewrite the following procedure using an if instead of the cond:

; (define (utensil meal)
;  (cond ((equal? meal 'chinese) 'chopsticks)
;	(else 'fork)))
;-----------------------------------------------------------------------

(define (utensil meal)
  (if (equal? meal 'chinese)
      'chopsticks
      'fork))

(utensil 'chinese)
(utensil 'italian)
