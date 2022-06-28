;;4.9
; Define a procedure discount that takes two arguments: an item's 
; initial price and a percentage discount.
; It should return the new price:

; > (discount 10 5)
; 9.50

; > (discount 29.90 50)
; 14.95
;-----------------------------------------------------------------------

(define (discount price discper)
  (* price
     (- 1 (/ discper 100))))

(discount 10 5)
(discount 29.9 50)
