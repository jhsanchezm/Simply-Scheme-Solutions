;;6.1
; What values are printed when you type these expressions to Scheme?
; (Figure it out in your head before you try it on the computer.)

;(cond ((= 3 4) '(this boy))
;      ((< 2 5) '(nowhere man))
;      (else '(two of us)))

;(cond (empty? 3)
;      (square 7)
;      (else 9))

;(define (third-person-singular verb)
;  (cond ((equal? verb 'be) 'is)
;        ((equal? (last verb) 'o) (word verb 'es))
;        (else (word verb 's))))

;(third-person-singular 'go)
;-----------------------------------------------------------------------

(cond ((= 3 4) '(this boy))
      ((< 2 5) '(nowhere man))         ;returns: '(nowhere man)
      (else '(two of us)))

(cond (empty? 3)
      (square 7)                       ;returns: 3
      (else 9))

(define (third-person-singular verb)
  (cond ((equal? verb 'be) is)
        ((equal? (last verb) 'o) (word 'es))
        (else (word verb 's))))

(third-person-singular 'go)

