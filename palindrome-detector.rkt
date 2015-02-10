#lang racket

(module palindrome-detector racket
(provide detect-palindrome)

(define (detect-palindrome inlist)
  (if (equal? (reverse inlist) inlist) #t #f)
  )
)
