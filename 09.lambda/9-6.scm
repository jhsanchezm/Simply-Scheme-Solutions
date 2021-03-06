;; 9.6

; Write a procedure sentence-version that takes a function f as its argument and returns a function g.
; f should take a single word as argument. g should take a sentence as argument and return the sentence formed
; by applying f to each word of that argument.

; > ((sentence-version first) '(if i fell))
; (I I F)

; > ((sentence-version square) '(8 2 4 6))
; (64 4 16 36)

;----------------------------------------------------------------------------------------------------------------

(define (sentence-version f)
  (lambda (sent) (every f sent)))

((sentence-version first) '(if i fell))
((sentence-version square) '(8 2 4 6))