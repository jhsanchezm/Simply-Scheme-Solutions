;;6.11

; Write a predicate valid-date? that takes three numbers as arguments,
; representing a month, a day of the month, and a year. Your procedure
; should return #t if the numbers represent a valid date
; (e.g., it isn't the 31st of September).
; February has 29 days if the year is divisible by 4,
; except that if the year is divisible by 100
; it must also be divisible by 400.

; > (valid-date? 10 4 1949)
; #T

; > (valid-date? 20 4 1776)
; #F

; > (valid-date? 5 0 1992)
; #F

; > (valid-date? 2 29 1900)
; #F

; > (valid-date? 2 29 2000)
; #T
;-----------------------------------------------------------------------

(define (divisible? big little)
  (= (remainder big little) 0))

(define (eval-day-month month day)
  (and (>= month 1) (<= month 12)
       (>= day 1) (<= day 31)))

(define (without31th? month day)
  (and (member? month '(4 6 9 11)) (< day 31)))

(define (february? month day year)
  (and (= month 2)
       (<= day 29)
       (and (member? day '(28 29))
            (and (divisible? year 4)
                 (or (not (divisible? year 100))
                     (divisible? year 400)))
                )))

(define (valid-date? month day year)
  (and (eval-day-month month day)
      (or
       (without31th? month day)
       (february? month day year)
       (member? month '(1 3 5 7 8 10 12)))))

(valid-date? 10 4 1949)
(valid-date? 20 4 1776)
(valid-date? 5 0 1992)
(valid-date? 2 29 1900)
(valid-date? 2 29 2000)
(valid-date? 2 29 2012)
