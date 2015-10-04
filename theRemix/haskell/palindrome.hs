-- https://wiki.haskell.org/Cookbook/Lists_and_strings#List_comprehensions
-- i think i cheated
--   https://www.haskell.org/hoogle/?hoogle=reverse

isPalindrome word = ((reverse word) == word)

main = putStrLn( unlines[
  show (isPalindrome [1, 2, 3, 4, 5] == False),
  show (isPalindrome "racecar" == True ), 
  show (isPalindrome ["foo", "bar", "foo"] == True ),
  show (isPalindrome [1, 1, 3, 3, 1, 1] == True ),
  show (isPalindrome ["a", "b", "c"] == False ) ] )