# ruby_practice 

custom_ruby_eval
---------------------

This method takes a string that represents a valid mathematical expression and evaluates that expression to an integer without using the built-in Ruby method `eval`.  This method ignores the order of operations.


stringsRearrangement
---------------------

Checks to see if, in an array of equal length strings, it's possible to rearrange the strings such that the strings at consecutive positions in the array differ by exactly one character.

For example, inputArray = ["aba", "bbb", "bab"], the output should be
stringsRearrangement(inputArray) = false;

With inputArray = ["ab", "bb", "aa"], the output should be true, because strings can be rearranged in the following way: "aa", "ab", "bb".