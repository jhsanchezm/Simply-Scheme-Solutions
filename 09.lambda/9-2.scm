;; 9.2

; Rewrite the following definitions so as to make the implicit lambda explicit.

; (define (second stuff)
;   (first (bf stuff)))

; (define (make-adder num)
;  (lambda (x) (+ num x)))

;--------------------------------------------------------------------------------------

(define second (lambda (stuff) (first (bf stuff))))
(second '1234)


(define make-adder
  (lambda (num)
    (lambda (x) (+ num x))))
((make-adder 4) 2)