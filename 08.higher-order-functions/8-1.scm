;; 8.1

; What does Scheme return as the value of each of the following expressions? Figure it out for yourself before you try it on the computer.

; > (every last '(algebra purple spaghetti tomato gnu))

; > (keep number? '(one two three four))

; > (accumulate * '(6 7 13 0 9 42 17))

; > (member? 'h (keep vowel? '(t h r o a t)))

; > (every square (keep even? '(87 4 7 12 0 5)))

; > (accumulate word (keep vowel? (every first '(and i love her))))

; > ((repeated square 0) 25)

; > (every (repeated bl 2) '(good day sunshine))

;------------------------------------------------------------------------------------------

(every last '(algebra purple spaghetti tomato gnu)) ;---> '(a e i o u)

(keep number? '(one two three four))   ;---> '()

(accumulate * '(6 7 13 0 9 42 17))     ;---> 0

(member? 'h (keep vowel? '(t h r o a t)))   ;---> #f

(every square (keep even? '(87 4 7 12 0 5)))    ;--->'(16 144 0)

(accumulate word (keep vowel? (every first '(and i love her))))   ;---> 'ai

((repeated square 0) 25)    ;---> 25 (didn't guess XD)

(every (repeated bl 2) '(good day sunshine))  ;---> '(go d sunshi)