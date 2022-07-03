;; 9.1

; What will Scheme print? Figure it out yourself before you try it on the computer.

; > (lambda (x) (+ (* x 3) 4))

; > ((lambda (x) (+ (* x 3) 4)) 10)

; > (every (lambda (wd) (word (last wd) (bl wd)))
;          '(any time at all))

; > ((lambda (x) (+ x 3)) 10 15)

;--------------------------------------------------------------------------------------

;(lambda (x) (+ (* x 3) 4)) ;----> Print that is a procedure but it does not return a value because we did not passed a
                            ;      a value as an x argument. We only declared the function, we didn't called.

;((lambda (x) (+ (* x 4) 4)) 10)   ;---> It returns 44, because we passed the value 10 as an argument. When we pass the argument
                                   ;     we are invoking the function too.

;(every (lambda (wd) (word (last wd) (bl wd))) ; ---> This returns '(yan etim ta lal)
;       '(any time at all))

;((lambda (x) (+ x 3)) 10 15)      ;---> this return to error because the function only expect one argument and we gave it
                                   ;     two values as arguments