;;6.14

; Write a procedure describe-time that takes a number of seconds as
; its argument and returns a more useful description of
; that amount of time:

; > (describe-time 45)
; (45 SECONDS)

; > (describe-time 930)
; (15.5 MINUTES)

; > (describe-time 30000000000)
; (9.506426344208686 CENTURIES)
;-----------------------------------------------------------------------

(define (describe-time seconds)
  (cond ((and (>= seconds 1) (< seconds 60)) (se seconds 'seconds))
        ((and (>= seconds 60) (< seconds (* 60 60))) (se (/ seconds 60) 'minutes))
        ((and (>= seconds (* 60 60)) (< seconds (* 60 60 24))) (se (/ seconds (* 60 60)) 'hours))
        ((and (>= seconds (* 60 60 24)) (< seconds (* 60 60 24 7))) (se (/ seconds (* 60 60 24)) 'days))
        ((and (>= seconds (* 60 60 24 7)) (< seconds (* 60 60 24 7 4))) (se (/ seconds (* 60 60 24 7)) 'weeks))
        ((and (>= seconds (* 60 60 24 30)) (< seconds (* 60 60 24 30 12))) (se (/ seconds (* 60 60 24 30)) 'months))
        ((and (>= seconds (* 60 60 24 30 12)) (< seconds (* 60 60 24 30 12 10))) (se (/ seconds (* 60 60 24 30 12)) 'years))
        ((and (>= seconds (* 60 60 24 30 12 10)) (< seconds (* 60 60 24 30 12 10 10))) (se (/ seconds (* 60 60 24 30 12 10)) 'decades))
        ((and (>= seconds (* 60 60 24 30 12 10 10)) (< seconds (* 60 60 24 30 12 10 10 10))) (se (/ seconds (* 60 60 24 30 12 10 10)) 'centuries))
        ))

(describe-time 45)
(describe-time 930)
;(describe-time 12600)
;(describe-time 129600)
;(describe-time 907200)
;(describe-time (* 907200 6))
;(describe-time (* 907200 6 7))
(describe-time 30000000000)
