# ruby_exercises
Little programming exercises in Ruby

## anagram.rb
Accepts any number of strings from the command line. Ignores proper grammar and prints "IS" or "ISN'T" if they __are__ or __are not__ palindromes.

Example usage: ruby anagram.rb jeremyirons jeremysiron

## fib.rb
Accepts a number from the command line, and prints the location of that value as it appears in the Fibonacci series. Performed with recursion.

Example usage: ruby fib.rb 5

## fibiter.rb
Accepts a number from the command line, and prints the location of that value as it appears in the Fibonacci series. Performed iteratively.

Example usage: ruby fib.rb 5
## palindrome.rb
Accepts a single string from the command line. Prints "IS" or "ISN'T" if it is or isn't a palindrome.

Example usage: ruby palindrome.rb abcdcba

## pascal.rb
Accepts a single integer value from the command line. Prints all rows until the row specified by the passed value.

Example usage: ruby pascal 10

## steps.rb
Accepts 3 arguments; min_step, max_step, and total_length. Determines the number of combinations of steps you can take before reaching the length.

Example usage: ruby steps.rb 1 3 20

## steps3.rb
Accepts 1 argument; total_length. Determines the number of combinations of steps (1, 2, or 3) that can be taken before reaching a destination of total_length. Lazy version of steps.rb

Example usage: ruby steps3.rb 20
