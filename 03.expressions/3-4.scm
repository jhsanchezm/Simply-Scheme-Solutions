;;3.4
;Five little people are hired in evaluating the following expression:

;(+ (* 3 (- 4 7))
;   (- 8 (- 3 5)))
;Give each little person a name and list her specialty, the argument values she receives, her return value, and the name of the little person to whom she tells her result.

(+ (* 3 (- 4 7))
   (- 8 (- 3 5)))

;John solves (- 4 7) and gives Hanna -3
;Hanna solves (* 3 -3) and gives Kyle -9
;Dexter solves (- 3 5) and gives Sasha -2
;Sasha solves (- 8 -2) and gives Kyle 10
;Kyle solves (+ -9 10) and prints 1
