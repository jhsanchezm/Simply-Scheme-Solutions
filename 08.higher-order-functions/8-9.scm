;; 8.9

; What procedure can you use as the first argument to every so that for
; any sentence used as the second argument, every returns that sentence?

; What procedure can you use as the first argument to keep so that for any
; sentence used as the second argument, keep returns that sentence?

; What procedure can you use as the first argument to accumulate so that for any
; sentence used as the second argument, accumulate returns that sentence?

;----------------------------------------------------------------------------------

(every se '(quousque tandem abutere catilina patientia nostra))

(keep word '(quousque tandem abutere catilina patientia nostra))

(accumulate se '(quousque tandem abutere catilina patientia nostra))