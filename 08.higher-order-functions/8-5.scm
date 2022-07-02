;; 8-5

; Write a procedure transform-beatles that takes a procedure as an argument,
; applies it to each of the Beatles, and returns the results in a sentence:

;(define (amazify name)
;  (word 'the-amazing- name))
;> (transform-beatles amazify)
;(THE-AMAZING-JOHN THE-AMAZING-PAUL THE-AMAZING-GEORGE
; THE-AMAZING-RINGO)

;> (transform-beatles butfirst)
;(OHN AUL EORGE INGO)

;------------------------------------------------------------------------------------------

(define (amazify name)
  (word 'the-amazing- name))

(define (transform-beatles f)
  (se (every f '(john paul george ringo))))

(transform-beatles amazify)
(transform-beatles butfirst)