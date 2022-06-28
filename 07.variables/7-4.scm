;;7.4

; What does this procedure do? Explain how it manages to work.

 (define (sum-square a b)
  (let ((+ *)
        (* +))
    (* (+ a a) (+ b b))))
;-----------------------------------------------------------------------

(sum-square 3 3)

;You are swithching the simbols by naming + and assigning the value *.
;Doing this you assure that + acts as an *, and viceversa.
