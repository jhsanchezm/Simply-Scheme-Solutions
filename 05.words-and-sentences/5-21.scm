;;5.21
; Write a procedure query that turns a statement into a question
; by swapping the first two words and adding a question mark to the
; last word:

; > (query '(you are experienced))
; (ARE YOU EXPERIENCED?)

; > (query '(i should have known better))
; (SHOULD I HAVE KNOWN BETTER?)
;-----------------------------------------------------------------------

(define (query sent)
  (se (first (butfirst sent))                   ;Prints the second word
      (first sent)                              ;Prints the first word
      (butlast (butfirst (butfirst sent)))      ;Prints the rest words except the last word
      (word (last sent) '?)))                   ;Prints the last word with the ?

(query '(you are experienced))
(query '(i should have known better))
