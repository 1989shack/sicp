#lang sicp

(#%require "common.scm")

;   Exercise 4.50
;   =============
;   
;   Implement a new special form ramb that is like amb except that it
;   searches alternatives in a random order, rather than from left to right.
;   Show how this can help with Alyssa's problem in exercise [4.49].
;   
;   ------------------------------------------------------------------------
;   [Exercise 4.50]: http://sicp-book.com/book-Z-H-28.html#%_thm_4.50
;   [Exercise 4.49]: http://sicp-book.com/book-Z-H-28.html#%_thm_4.49
;   4.3.3 Implementing the <tt>Amb</tt> Evaluator - p436
;   ------------------------------------------------------------------------

(-start- "4.50")

(#%require "ea-analyzing-50.scm")
(#%require "ea-pick-fruit-expression.scm")

(put-evaluators)

(println "Checking with data-directed eval:")
(check-fruit
 (eval (cons 'begin
         pick-fruit-body)))

(println "
======================================
")

(define simple-prog
  '(begin

     (define (require p)
       (if (not p) (amb)))

     (let ((x (amb 1 2 3 4)))
       (require (= x 3))
       (println x))

     ))

(eval simple-prog)

(println "
======================================
")


(--end-- "4.50")