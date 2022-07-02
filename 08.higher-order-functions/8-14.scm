;; 8.14

; Write the procedure subword that takes three arguments:
; a word, a starting position number, and an ending position number.
; It should return the subword containing only the letters between the specified positions:

; > (subword 'polythene 5 8)
; THEN
;--------------------------------------------------------------------------------------------

(define (subword wd start end)
  ((repeated bf (- start 1)) ((repeated bl (- (count wd) end)) wd)))

(subword 'polythene 5 8)