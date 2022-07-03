;; 9.17

 ; Write "keep" in terms of "every" and "accumulate".

;--------------------------------------------------------------------------------------------------------------

(define (keep1 f sent)
  (accumulate se (every (lambda (x) (if (f x)
                                        x
                                        '()))
                        sent)))

(keep1 even? '(1 2 3 4 5 6))