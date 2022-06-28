;;6.9

; Sometimes you must choose the singular or the plural of a word:
; 1 book but 2 books. Write a procedure thismany that takes two arguments,
; a number and a singular noun, and combines them appropriately:

; > (thismany 1 'partridge)
; (1 PARTRIDGE)

; > (thismany 3 'french-hen)
; (3 FRENCH-HENS)
;-----------------------------------------------------------------------

(define (thismany quantity item)
  (if (= quantity 1)
      (se quantity item)
      (se quantity (word item 's))))

(thismany 1 'partride)
(thismany 3 'french-hen)

