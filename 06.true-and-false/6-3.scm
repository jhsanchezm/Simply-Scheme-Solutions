;;6.3

; Rewrite the following procedure using a cond instead of the ifs:

; (define (sign number)
;  (if (< number 0)
;      'negative
;      (if (= number 0)
;	  'zero
;	  'positive)))
;-----------------------------------------------------------------------

(define (sign number)
  (cond ((< number 0) 'negative)
        ((= number 0) 'zero)
        (else 'positive)))

(sign -1)
(sign 0)
(sign 1)
