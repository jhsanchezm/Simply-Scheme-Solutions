;; 9.7

; Write a procedure called letterwords that takes as its arguments a letter and a sentence.
; It returns a sentence containing only those words from the argument sentence that contain the argument letter:

; > (letterwords 'o '(got to get you into my life))
; (GOT TO YOU INTO)

;-----------------------------------------------------------------------------------------------------------------

(define (letterwords letter sent)
  (keep (lambda (wd) (member? letter wd)) sent))

(letterwords 'o '(got to get you into my life))