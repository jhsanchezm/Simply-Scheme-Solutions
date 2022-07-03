;; 9.4

; The following program doesn't work. Why not? Fix it.

; (define (who sent)
;  (every describe '(pete roger john keith)))

; (define (describe person)
;  (se person sent))

; It's supposed to work like this:

; > (who '(sells out))
; (pete sells out roger sells out john sells out keith sells out)

; In each of the following exercises, write the procedure in terms of lambda and higher-order functions.
; Do not use named helper procedures. If you've read Part IV, don't use recursion, either.

;--------------------------------------------------------------------------------------------------------

(define (who sent)
  (every (lambda (person) (se person sent)) '(peter roger john keith)))

(who '(sells out))