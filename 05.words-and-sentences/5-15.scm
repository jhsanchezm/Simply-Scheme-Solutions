;; 5.15
; Write a procedure first-two that takes a word as its argument, 
; returning a two-letter word containing the first two letters of the 
; argument.

; > (first-two 'ambulatory)
; AM
;-----------------------------------------------------------------------

(define (first-two x)
  (word
   (first x)
   (first (butfirst x))))

(first-two 'ambulatory)
