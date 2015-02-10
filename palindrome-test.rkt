(require rackunit
         "palindrome-detector.rkt")

(check-true (detect-palindrome '(1 2 3 2 1)))
(check-false (detect-palindrome '(1 2 3 4 5)))

(check-true (detect-palindrome [:foo :bar :foo]))
(check-true (detect-palindrome "racecar"))
