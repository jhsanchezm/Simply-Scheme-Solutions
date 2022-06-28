;;4.4
;Each of the following procedure definitions has an error of some kind. 
;Say what's wrong and why, and fix it:

;(define (sphere-volume r)
;  (* (/ 4 3) 3.141592654)
;  (* r r r))

;(define (next x)
;  (x + 1))

;(define (square)
;  (* x x))

;(define (triangle-area triangle)
;  (* 0.5 base height))

;(define (sum-of-squares (square x) (square y))
;  (+ (square x) (square y)))

;------------------------------------------------------------------------------------------------
;(define (sphere-volume r)      ;The error of this function is that tries to return two values.
;  (* (/ 4 3) 3.141592654)      ;And just return the result of (* r r r) that this is wrong.
;  (* r r r))                   ;To fix it we just erase the (* r r r) part.

(define (sphere-volume r)       ;This is the correct version of the last function.
  (* (/ 4 3) 3.141592654))

(sphere-volume 3)
;------------------------------------------------------------------------------------------------
;(define (next x)                ;The error here is the way is written the part (x + 1). To fix it
;  (x + 1))                      ;we need to write it this way: (+ x 1)

(define (next x)                 ;This is the correct version of the last function.
  (+ x 1))

(next 4)
;------------------------------------------------------------------------------------------------
;(define (square)                ;The error here is the that the parameter is not declared. To fix
;  (* x x))                      ;it, we have to add the x parameter after name the function like this:(square x)

(define (square x)               ;This is the correct version of the last function.
  (* x x))

(square 4)
;------------------------------------------------------------------------------------------------
;(define (triangle-area triangle) ;The error in this function is the parameter 'triange' is not in the body.
;  (* 0.5 base height))           ;and the parameters 'base' and 'height' have to declared it the function.
                                  ;To fix it we have to declare 'base' and 'height' instead of 'triangle',
                                  ;like this: (triangle-area base height).

(define (triangle-area base height)  ;This is the correct version of the last function.
  (* 0.5 base height))

(triangle-area 8 10)
;------------------------------------------------------------------------------------------------
;(define (sum-of-squares (square x) (square y)) ;The error is that the function call other functions
;  (+ (square x) (square y)))                   ;where the parameters are declared. To fix this we should:
                                                ;(sum-of-squares x y)

(define (sum-of-squares x y)                    ;This is the correct version of the last function.
  (+ (square x) (square y)))

(sum-of-squares 10 10)
