;;4.5
; Write a procedure to convert a temperature from Fahrenheit to Celsius,
; and another to convert in the other direction.
, The two formulas are F=9⁄5C+32 and C=5⁄9(F-32).
;------------------------------------------------------------------------------------------------

(define (farenheit-to-celsius f)         ;Function from Farenheit to Celsius
  (* (/ 5 9) (- f 32)))

(farenheit-to-celsius 56)

(define (celcius-to-farenheit c)         ;Function from Celsius to Farenheit
  (+ (* (/ 9 5) c) 32))

(celcius-to-farenheit 13.33333333333)
