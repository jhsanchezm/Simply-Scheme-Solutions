;;5.20
; Define a procedure to find somebody's middle names:

; > (middle-names '(james paul mccartney))
; (PAUL)

; > (middle-names '(john ronald raoul tolkien))
; (RONALD RAOUL)

; > (middle-names '(bugs bunny))
; ()

; > (middle-names '(peter blair denis bernard noone))
; (BLAIR DENIS BERNARD)
;-----------------------------------------------------------------------

(define (middle-names sent)
  (butfirst (butlast sent)))

(middle-names '(james paul mccartney))
(middle-names '(john ronald raoul tolkien))
(middle-names '(bugs bunny))
(middle-names '(peter blair denis bernard noone))
