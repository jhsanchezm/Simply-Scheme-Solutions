;; 9.9

; Write a procedure common-words that takes two sentences as arguments and returns
; a sentence containing only those words that appear both in the first sentence and in the second sentence.

;-------------------------------------------------------------------------------------------------------------

(define (common-words sent1 sent2)
  (accumulate se (keep (lambda (wd) (member? wd sent2)) sent1)))

(common-words '(one two three six) '(one three four five two))