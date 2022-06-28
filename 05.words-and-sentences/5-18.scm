;;5.18
; Try the following and explain the result:

; (define (ends word)
;  (word (first word) (last word)))

; > (ends 'john)
;-----------------------------------------------------------------------

;(define (ends word)                   ;It returns an error because 
;  (word (first word) (last word)))    ;the parameter word is an already asigned word.

;(ends 'john)
