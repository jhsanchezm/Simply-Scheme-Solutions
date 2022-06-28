;; 6.2
; What values are printed when you type these expressions to Scheme?
; (Figure it out in your head before you try it on the computer.)

; (or #f #f #f #t)

; (and #f #f #f #t)

; (or (= 2 3) (= 4 3))

; (not #f)

; (or (not (= 2 3)) (= 4 3))

; (or (and (= 2 3) (= 3 3)) (and (< 2 3) (< 3 4)))
;-----------------------------------------------------------------------

(or #f #f #f #t)

(and #f #f #f #t)

(or (= 2 3) (= 4 3))

(not #f)

(or (not (= 2 3)) (= 4 3))

(or (and (= 2 3) (= 3 3)) (and (< 2 3) (< 3 4)))
