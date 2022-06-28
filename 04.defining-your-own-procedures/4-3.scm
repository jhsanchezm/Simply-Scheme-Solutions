;;4.3
; Here are some procedure definitions. For each one, describe the function
; in English, show a sample invocation, and show the result of that
; invocation.

;(define (f x y) (- y x))

;(define (identity x) x)

;(define (three x) 3)

;(define (seven) 7)

;(define (magic n)
;  (- (/ (+ (+ (* 3 n)
;              13)
;           (- n 1))
;        4)
;     3))
;----------------------------------------------------------------------------------------------


(define (f x y) (- y x))     ;This function substract x from y.
(f 4 8)                      ;This is an invocation sample and returns 4

(define (identity x) x)      ;This function returns the same value given in the parameter.
(identity 10)                ;This is an invocation sample and returns 10

(define (three x) 3)         ;Given any value in the parameter this function returns 3.
(three 10)                   ;This is an invocation sample and always returns 3.

(define (seven) 7)           ;This function does not have any parameter and always returns 7.
(seven)                      ;This is an invocation sample and always returns 7.

(define (magic n)            ;This function receive a number and returns the same number
  (- (/ (+ (+ (* 3 n)
              13)
           (- n 1))
        4)
     3))

(magic 3)                    ;This is the invocation sample and returns 3 in this case.
