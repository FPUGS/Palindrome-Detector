#lang racket

(require rackunit
         "palindrome-detector.rkt")


(define palindrome-tests
  (test-suite "Palindrome detector tests"
              (test-case "palindrome list of numbers is detected"
                         (check-true (detect-palindrome '(1 2 3 2 1))))

              (test-case "non-palindrome list of numbers is rejected"
                         (check-false (detect-palindrome '(1 2 3 4 5))))

              (test-case "palindrome list of expressions is detected"
                         (let ([foo 5] [bar 6])
                           (check-true (detect-palindrome '[foo bar foo]))))

              (test-case "palindrome string is detected"
                         (check-true (detect-palindrome "racecar")))))

(require rackunit/text-ui)
(run-tests palindrome-tests 'verbose)
