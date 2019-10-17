#lang sicp

(#%require "common.scm")

;   Exercise 4.56
;   =============
;   
;   Formulate compound queries that retrieve the following information:
;   
;   a. the names of all people who are supervised by Ben Bitdiddle, together
;   with their addresses;
;   
;   b. all people whose salary is less than Ben Bitdiddle's, together with
;   their salary and Ben Bitdiddle's salary;
;   
;   c. all people who are supervised by someone who is not in the computer
;   division, together with the supervisor's name and job.
;   
;   ------------------------------------------------------------------------
;   [Exercise 4.56]: http://sicp-book.com/book-Z-H-29.html#%_thm_4.56
;   4.4.1 Deductive Information Retrieval - p448
;   ------------------------------------------------------------------------

(-start- "4.56")

(println "
    a. (and (supervisor ?person (Bitdiddle Ben))
            (address . ?tail))

    b. (and (salary ?person ?amount)
            (salary (Bitdiddle Ben) ?ben-amount)
            (lisp-value < ?amount ?ben-amount))

    c. (and (supervisor ?person ?boss)
            (not (job ?boss (computer . ?tail)))
            (job ?boss ?tail))

")

(--end-- "4.56")

