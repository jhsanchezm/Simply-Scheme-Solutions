;;5.2
; For each of the following examples, write a procedure of two arguments
; that, when applied to the sample arguments, returns the sample result.
; Your procedures may not include any quoted data.

; > (f1 '(a b c) '(d e f))
; (B C D E)

; > (f2 '(a b c) '(d e f))
; (B C D E AF)

; > (f3 '(a b c) '(d e f))
; (A B C A B C)

; > (f4 '(a b c) '(d e f))
; BE
;-----------------------------------------------------------------------

(define (f1 a b)
  (butfirst
 (butlast (se a b))))

(f1 '(a b c) '(d e f))
;-----------------------------------------------------------------------

(define (f2 a b)
  (se (f1 a b) (word (first a) (last b))))

(f2 '(a b c) '(d e f))
;-----------------------------------------------------------------------

(define (f3 a b)
  (se a a))

(f3 '(a b c) '(d e f))
;-----------------------------------------------------------------------

(define (f4 a b)
  (word
   (first
   (butfirst a))
  (first
   (butfirst b))))

(f4 '(a b c) '(d e f))
