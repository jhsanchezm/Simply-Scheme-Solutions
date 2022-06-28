;;6.13

; Write a better greet procedure that understands as many different
; kinds of names as you can think of:

; > (greet '(john lennon))
; (HELLO JOHN)

; > (greet '(dr marie curie))
; (HELLO DR CURIE)

; > (greet '(dr martin luther king jr))
; (HELLO DR KING)

; > (greet '(queen elizabeth))
; (HELLO YOUR MAJESTY)

; > (greet '(david livingstone))
; (DR LIVINGSTONE I PRESUME?)
;-----------------------------------------------------------------------

(define (greet name)
  (cond ((equal? (first name) 'queen) '(hello your majesty))
        ((member? (first name) '(professor dr))
         (se 'hello (first name)
             (if (equal? (last name) 'jr) (last (butlast name)) (last name))))
        ((equal? (last name) 'livingstone) '(dr livingstone i presume?))
        (else (se 'hello (first name)))
        ))

(greet '(john lennon))
(greet '(dr marie curie))
(greet '(dr martin luther king jr))
(greet '(queen elizabeth))
(greet '(david livingstone))
