#lang sicp

(#%require "common.scm")

;   Exercise 4.22
;   =============
;   
;   Extend the evaluator in this section to support the special form let.
;   (See exercise [4.6].)
;   
;   ------------------------------------------------------------------------
;   [Exercise 4.22]: http://sicp-book.com/book-Z-H-26.html#%_thm_4.22
;   [Exercise 4.6]:  http://sicp-book.com/book-Z-H-26.html#%_thm_4.6
;   4.1.7 Separating Syntactic Analysis from Execution - p398
;   ------------------------------------------------------------------------

(-start- "4.22")

(#%require "ea-analyzing-22.scm")
(put-evaluators)
(#%require "ea-pick-fruit-expression.scm")


;; Try it ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(println "Checking with data-directed eval:")
(check-fruit
 (apply (eval
         pick-fruit
         the-global-environment)
        '()))
(println "")

(--end-- "4.22")
