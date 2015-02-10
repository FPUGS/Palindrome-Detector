#lang racket

(require rackunit
         "palindrome-detector.rkt")

(test-case "palindrome list of numbers is detected"
           (check-true (detect-palindrome '(1 2 3 2 1))))
(test-case "non-palindrome list of numbers is rejected"
           (check-false (detect-palindrome '(1 2 3 4 5))))

(test-case "palindrome list of attributes is detected"
           (check-true (detect-palindrome [:foo :bar :foo])))
(test-case "palindrome string is detected"
           (check-true (detect-palindrome "racecar")))
