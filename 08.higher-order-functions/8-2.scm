;; 8.2

; Fill in the blanks in the following Scheme interactions:

; > (______ vowel? 'birthday)
; IA

; > (______ first '(golden slumbers))
; (G S)

; > (______ '(golden slumbers))
; GOLDEN

; > (______ ______ '(little child))
; (E D)

; > (______ ______ (______ ______ '(little child)))
; ED

; > (______ + '(2 3 4 5))
; (2 3 4 5)

; > (______ + '(2 3 4 5))
; 14

;---------------------------------------------------------------------

(keep vowel? 'birthday)

(every first '(golden slumbers))

(first '(golden slumbers))

(every last '(little child))

(accumulate word (every last '(little child)))

(every + '(2 3 4 5))

(accumulate + '(2 3 4 5))