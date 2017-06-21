# ruby_practice

chunk
---------------------

This method takes an array of arbitrary length and a number parameter and returns a nested array and "chunks" the array's elements into subarrays of a specified length.  Functionally similar to the built-in Ruby method `each_slice`.


combine_hashes
---------------------

Merges two hashes into one.  If there are duplicate keys, an array is created in which the two associated values are stored, and this array becomes the new value associated with the key in our output hash.



custom_ruby_eval
---------------------

This method takes a string that represents a valid mathematical expression and evaluates that expression to an integer without using the built-in Ruby method `eval`.  This method ignores the order of operations.


strings_rearrangement
---------------------

Checks to see if, in an array of equal length strings, it's possible to rearrange the strings such that the strings at consecutive positions in the array differ by exactly one character.

For example, inputArray = ["aba", "bbb", "bab"], the output should be
stringsRearrangement(inputArray) = false;

With inputArray = ["ab", "bb", "aa"], the output should be true, because strings can be rearranged in the following way: "aa", "ab", "bb".

