;; 8.12

; When you teach a class, people will get distracted if you say "um" too many times.
; Write a count-ums that counts the number of times "um" appears in a sentence:

; > (count-ums
;    '(today um we are going to um talk about functional um programming))
; 3

;----------------------------------------------------------------------------------------

(define (um wd)
  (if (equal? wd 'um) 1 0))

(define (count-ums se)
  (accumulate + (every um se)))

(count-ums '(today um we are going to um talk about functional um programming))