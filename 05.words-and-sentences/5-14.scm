;;5.14
; Write a procedure third that selects the third letter of a word
; (or the third word of a sentence).
;-----------------------------------------------------------------------

(define (third x)
  (first
   (butfirst (butfirst x))))

(third '(the world is adventure))
