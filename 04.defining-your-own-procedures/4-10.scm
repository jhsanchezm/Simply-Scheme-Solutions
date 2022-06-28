;; 4.10
; Write a procedure to compute the tip you should leave at a restaurant. It should take the total bill as its argument and return the amount of the tip. It should tip by 15%, but it should know to round up so that the total amount of money you leave (tip plus original bill) is a whole number of dollars. (Use the ceiling procedure to round up.)

; > (tip 19.98)
; 3.02

; > (tip 29.23)
; 4.77

; > (tip 7.54)
; 1.46
;------------------------------------------------------------------------------------------------

(define (tip total)
  (ceiling
   (* total 0.15)))

(tip 19.98)
(tip 29.23)
(tip 7.54)
