;; 8.13

; Write a procedure phone-unspell that takes a spelled version of a phone number,
; such as POPCORN, and returns the real phone number, in this case 7672676.
; You will need to write a helper procedure that uses an
; 8-way cond expression to translate a single letter into a digit.

;--------------------------------------------------------------------------------------------

(define (letter-number letter)
  (cond ((member? letter 'abc) 2)
        ((member? letter 'def) 3)
        ((member? letter 'ghi) 4)
        ((member? letter 'jkl) 5)
        ((member? letter 'mno) 6)
        ((member? letter 'pqrs) 7)
        ((member? letter 'tuv) 8)
        ((member? letter 'wxyz) 9)
        (else 0)))

(define (phone-unspell wd)
  (accumulate word (every letter-number wd)))

(phone-unspell 'popcorn)