;; 8.7

; Write a procedure letter-count that takes a sentence as its argument
; and returns the total number of letters in the sentence:

; > (letter-count '(fixing a hole))
; 11

;-------------------------------------------------------------------------------------

;(define (always-one arg)             
;  1)

;(define (count sent)                 ; This is another way to create a "count" function. But in this case we will use
;  (every always-one sent))           ; the default count function.

(define (letter-count se)             ; In this case (count se) the function "count" counts every word in the sentence.
  (accumulate + (every count se)))    ; But if you apply "every" (every count se) subdivide the counting from words to letters.

(letter-count '(fixing a hole))
(letter-count '(random access memories))