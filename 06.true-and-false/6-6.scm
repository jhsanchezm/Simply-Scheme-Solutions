;;6-6
; Write a predicate teen? that returns true if its argument is
; between 13 and 19.
;-----------------------------------------------------------------------

(define (teen age)
  (and (>= age 13) (<= age 19)))

(teen 20)
(teen 13)
(teen 17)

