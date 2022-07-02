;; 8.8

; Write an exaggerate procedure which exaggerates sentences:

; > (exaggerate '(i ate 3 potstickers))
; (I ATE 6 POTSTICKERS)

; > (exaggerate '(the chow fun is good here))
; (THE CHOW FUN IS GREAT HERE)

; It should double all the numbers in the sentence, and it should replace "good" with "great,"
; "bad" with "terrible," and anything else you can think of.

;-------------------------------------------------------------------------------------------------

(define (modify wd)
  (cond ((number? wd) (* 2 wd))
        ((equal? wd 'good) 'great)
        ((equal? wd 'bad) 'terrible)
        (else wd)))

(define (exaggerate se)
  (every modify se))

(exaggerate '(i ate 3 potstickers))
(exaggerate '(the chow fun is good here))