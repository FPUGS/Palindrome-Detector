enum FooBar
{
  Foo;
  Bar;
  a;
  b;
  c;
}

class Palindrome
{
  private static inline function isPalindrome( list:Array<Dynamic> ):Bool
  {
    return Lambda.foreach( list, function( item:Dynamic ):Bool
    {
      return Lambda.indexOf(list, item) == list.length - list.lastIndexOf(item) - 1;
    });
  }

  static public function main()
  {
    trace(
      isPalindrome([1, 2, 3, 4, 5]) == false,
      isPalindrome("racecar".split('')) == true,
      isPalindrome([Foo, Bar, Foo]) == true,
      isPalindrome([1, 1, 3, 3, 1, 1]) == true,
      isPalindrome([a, b, c]) == false
    );
  }
}