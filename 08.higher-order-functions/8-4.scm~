;; 8.4

; Write a procedure choose-beatles that takes a predicate function as its argument
; and returns a sentence of just those Beatles (John, Paul, George, and Ringo)
; that satisfy the predicate. For example:

; (define (ends-vowel? wd) (vowel? (last wd)))

; (define (even-count? wd) (even? (count wd)))

; > (choose-beatles ends-vowel?)
; (GEORGE RINGO)

; > (choose-beatles even-count?)
; (JOHN PAUL GEORGE)
;-------------------------------------------------------------------------------------

(define (ends-vowel? wd) (vowel? (last wd)))

(define (even-count? wd) (even? (count wd)))

(define (choose-beatles f)
  (keep f '(john paul george ringo)))

(choose-beatles ends-vowel?)
(choose-beatles even-count?)