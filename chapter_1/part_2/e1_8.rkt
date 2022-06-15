#lang sicp

(define (cube-root-iter guess x)
    (if (good-enough? guess (improve guess x))
        guess
        (cube-root-iter (improve guess x) x)))

(define (good-enough? guess next-guess)
    (< (abs (- guess next-guess)) 0.001))

(define (cube x) (* x x x))

(define (improve guess x)
    (/ (+ (/ x (* guess guess)) (* 2.0 guess)) 3.0))

(define (cube-root x) (cube-root-iter 1.0 x))

(cube-root 8)
(cube-root 27)