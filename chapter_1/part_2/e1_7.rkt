#lang sicp

; with the original definition of good-enough?, very small
; numbers are wildly out of proportion and very large numbers
; take too much time to evaluate


; this program is an improved square root procedure as
; good-enough? is changed to be based upon the difference between
; guess and the next guess.

(define (sqrt-iter guess x)
    (define improved (improve guess x))
    (if (good-enough? guess improved)
        guess
        (sqrt-iter improved x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2.0))

(define (good-enough? guess next-guess)
    (< (abs (- guess next-guess)) 0.001))

(define (square x)
    (* x x))

(define (sqrt x) (sqrt-iter 1.0 x))

(sqrt 4)