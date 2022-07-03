;; 9.16

; In the language APL, most arithmetic functions can be applied either to a number,
; with the usual result, or to a vector—the APL name for a sentence of numbers—in which
; case the result is a new vector in which each element is the result of applying the function
; to the corresponding element of the argument. For example, the function sqrt applied to 16 returns 4 as in Scheme,
; but sqrt can also be applied to a sentence such as (16 49) and it returns (4 7).

; Write a procedure aplize that takes as its argument a one-argument procedure whose domain is numbers or words.
; It should return an APLized procedure that also accepts sentences:

; > (define apl-sqrt (aplize sqrt))

; > (apl-sqrt 36)
; 6

; > (apl-sqrt '(1 100 25 16))
; (1 10 5 4)

;----------------------------------------------------------------------------------------------------------------------

(define (aplize f)
   (lambda (x) (if (number? x)
                   (f x)
                   (every f x))))

(define apl-sqrt (aplize sqrt))

(apl-sqrt 36)
(apl-sqrt '(1 100 25 16))