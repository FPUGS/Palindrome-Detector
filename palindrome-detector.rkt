#lang racket

(provide detect-palindrome)

(define (detect-palindrome infoo)
  ;@ sanitize input
  (define testlist (if (string? infoo) (string->list infoo) infoo))
  
  ;@ reverse, compare
  (if (equal? (reverse testlist) testlist) #t #f)
  )
