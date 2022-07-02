;; 8.11

; Write a GPA procedure. It should take a sentence of grades as
; its argument and return the corresponding grade point average:

; > (gpa '(A A+ B+ B))
; 3.67

; Hint: write a helper procedure base-grade that takes a grade as argument and
; returns 0, 1, 2, 3, or 4, and another helper procedure grade-modifier that returns −.33, 0, or .33,
; depending on whether the grade has a minus, a plus, or neither.

;----------------------------------------------------------------------------------------------------

(define (grade number)
  (let ((base-grade (first number))
        (grade-modifier (last number)))
    (+ (cond ((equal? base-grade 'A) 4)
             ((equal? base-grade 'B) 3)
             ((equal? base-grade 'C) 2)
             ((equal? base-grade 'D) 1)
             (else 0))
       (cond ((equal? grade-modifier '+) 0.33)
             ((equal? grade-modifier '-) -0.33)
             (else 0)))))

(define (gpa numbers)
  (/ (accumulate + (every grade numbers)) (count numbers)))

(gpa '(A A+ B+ B))