;;6.12

; Make plural handle correctly words that end in y but have a vowel
; before the y, such as boy. Then teach it about words that end in x (box).
; What other special cases can you find?
;-------------------------------------------------------------------------

(define (plural x)
  (cond ((equal? (last x) 'x) (word x 'es))
        ((equal? (last x) 'h) (word x 'es))
        ((equal? (last x) 's) (word x 'es))
        (else (word x 's))
        ))

(plural 'box)
(plural 'hash)
(plural 'class)
(plural 'cat)
