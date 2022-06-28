;; 6.10

; Write a procedure sort2 that takes as its argument a sentence
; containing two numbers. It should return a sentence containing
; the same two numbers, but in ascending order:

; > (sort2 '(5 7))
; (5 7)

; > (sort2 '(7 5))
; (5 7)
;-----------------------------------------------------------------------

(define (sort2 sent)
  (if (< (first sent) (last sent))
      (se (first sent) (last sent))
      (se (last sent) (first sent))))

(sort2 '(5 7))
(sort2 '(7 5))
