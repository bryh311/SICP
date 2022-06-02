#lang sicp
; i will most likely gitignore this file


(define (abs x)
    (cond ((< x 0) (- x))
          ((= x 0) 0)
          ((> x 0) x)))
(define a 2)