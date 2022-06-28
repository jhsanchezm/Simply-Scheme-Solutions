;;6.7
; Write a procedure type-of that takes anything as its argument and
; returns one of the words word, sentence, number, or boolean:

; > (type-of '(getting better))
; SENTENCE

; > (type-of 'revolution)
; WORD

; > (type-of (= 3 3))
; BOOLEAN
; (Even though numbers are words, your procedure should return number if
; its argument is a number.)

; Feel free to check for more specific types, such as "positive integer,"
; if you are so inclined.
;-----------------------------------------------------------------------

(define (integer number)
  (cond ((< number 0) '(negative integer))
        ((= number 0) 'zero)
        (else '(positive integer))))

(define (type-of x)
  (cond ((number? x) (integer x))
        ((word? x) 'word)
        ((sentence? x) 'sentence)
        ((boolean? x) 'boolean)
        (else '(not determided type))))


(type-of '(getting better))
(type-of 'revolution)
(type-of (= 3 3))
(type-of 3)
(type-of 0)
(type-of -1)
