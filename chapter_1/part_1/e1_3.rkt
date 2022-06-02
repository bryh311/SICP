#lang sicp

(define (proc x y z)
    (define (add-squares x y) (+ (* x x) (* y y)))
    (if (> x y)
        (if (> y z)
            (add-squares x y)
            (add-squares x z))
        (if (> z x)
            (add-squares y z)
            (add-squares x y))))

(proc 15 15 10)
(proc 10 15 15)
(proc 15 10 15)