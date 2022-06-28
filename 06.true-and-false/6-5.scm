;;6.5
; Write a procedure european-time to convert a time from American
; AM/PM notation into European 24-hour notation. Also write american-time,
; which does the opposite:

; > (european-time '(8 am))
; 8

; > (european-time '(4 pm))
; 16

; > (american-time 21)
; (9 PM)

; > (american-time 12)
; (12 PM)

; > (european-time '(12 am))
; 24
; Getting noon and midnight right is tricky.
;-----------------------------------------------------------------------

(define (noon-midnight-eur hour)
  (if (equal? (last hour) 'pm) (first hour) (+ (first hour) 12)))

(define (european-time hour)
  (cond ((equal? (first hour) 12) (noon-midnight-eur hour))
        ((equal? (last hour) 'am) (first hour))
        (else (+ (first hour) 12))))

(define (american-time hour)
  (cond ((and (> hour 12) (<= hour 23)) (se (- hour 12) 'pm))
        ((and (>= hour 1) (<= hour 11)) (se hour 'am))
        ((or (= hour 0) (= hour 24)) (se '12 'am))
        ((= hour 12) (se 12 'pm))
        (else ('(Is not a valid hour)))))

(european-time '(8 am))
(european-time '(4 pm))
(american-time 21)
(american-time 12)
(european-time '(12 am))

