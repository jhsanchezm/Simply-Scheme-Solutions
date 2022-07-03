;; 9.3

;What does this procedure do?

;(define (let-it-be sent)
;  (accumulate (lambda (x y) y) sent))

;--------------------------------------------------------------------------

(define (let-it-be sent)                  ; This is another way to write a last function.
  (accumulate (lambda (x y) y) sent))

(let-it-be '(this is the master sound))
