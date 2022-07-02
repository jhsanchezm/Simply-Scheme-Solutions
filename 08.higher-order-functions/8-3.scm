;;8.3

; Describe each of the following functions in English. Make sure to include a description of the domain and range
; of each function. Be as precise as possible; for example, "the argument must be a function of one numeric argument"
; is better than "the argument must be a function."

;(define (f a)
;  (keep even? a))

;(define (g b)
;  (every b '(blue jay way)))

;(define (h c d)
;  (c (c d)))

;(define (i e)
;  (/ (accumulate + e) (count e)))

;accumulate

;sqrt

;repeated

;(repeated sqrt 3)

;(repeated even? 2)

;(repeated first 2)

;(repeated (repeated bf 3) 2)

;------------------------------------------------------------------------------------------------------------

;(define (f a)          ; This function receives numbers as an argument and returns the numbers that are even.
;  (keep even? a))

;(define (g b)                    ;This function receives another function as an argument the argument is applied to every
;  (every b '(blue jay way)))     ; word in the sentence.

;(define (h c d)                  ; the parameter c receives a functions that is applied two times to evaluate the d value.
;  (c (c d)))                     ; h is the higher-order function.

;(define (i e)                     ; In this function we pass a numbers as a parameter and returns the average of that group
;  (/ (accumulate + e) (count e))) ; of numbers

;accumulate                      ; This function receives two arguments one is a function and the another receive
                                 ; words, numbers, letters or sentences and merge them in one row.

;sqrt                            ; This function only receives a number as an argument and gives back the squared root of that
                                 ; number.

;repeated                        ; This function receive two arguments the first one a function and the other one the number of
                                 ; times you want to repeat that function after you close parenthesis there is the value that you
                                 ; want to apply that function.

;(repeated sqrt 3)                ; This function have three atoms, the first one is the name of the function the second one is the
                                 ; first parameter that receive a function (in this case sqrt) and the second parameter (third atom)
                                 ; express the number of times you want to apply the function sqrt

;(repeated even? 2)               ; This function receives two arguments the first one is a function that evaluates if a number is
                                 ; even, and the second argument is a number that means the number of times that the function is
                                 ; repeated.

;(repeated first 2)               ; This function receives two arguments the first one is a function that returns the fist word of a 
                                 ; sentence, and the second argument is a number that means the number of times that the function is
                                 ; repeated. Because the first function is applied two times that means in a sentence we get the first
                                 ; letter of the first word. if the input is a word we get an empty letter ("").

;(repeated (repeated bf 3) 2)     ; this function repeats the funtion bf six times. three times in the inner-expression and you
                                 ; you multiply this two times more.