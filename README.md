# ruby_practice

chunk
---------------------

This method takes an array of arbitrary length and a number parameter and returns a nested array and "chunks" the array's elements into subarrays of a specified length.  Functionally similar to the built-in Ruby method `each_slice`.


combine_hashes
---------------------

Merges two hashes into one.  If there are duplicate keys, an array is created in which the two associated values are stored, and this array becomes the new value associated with the key in our output hash.

```ruby
hash_a = {:a => 1, :b => 2, :c => 3}
hash_b = {:a => 2, :d => 4, :e => 5}
combine(hash_a, hash_b) #=> {:a => [1,2], :b => 2, :c => 3, :d => 4, :e => 5}
```


common_character_count
---------------------

Returns the total number of occurences characters are used in two strings.

```ruby
s1 = "Dr. Jimes Tooper"
s2 = "Dr. Bilb Onoo"
common_character_count(s1,s2) #=> 8 (3 from "Dr.", 2 empty spaces, 2 lower case "o"
```






custom_ruby_eval
---------------------

This method takes a string that represents a valid mathematical expression and evaluates that expression to an integer without using the built-in Ruby method `eval`.  This method ignores the order of operations.


strings_rearrangement
---------------------

Checks to see if, in an array of equal length strings, it's possible to rearrange the strings such that the strings at consecutive positions in the array differ by exactly one character.

For example, `input_array = ["aba", "bbb", "bab"]`, the output should be
`strings_rearrangement(input_array) = false`;

With `input_array = ["ab", "bb", "aa"]`, the output should be `true`, because strings can be rearranged in the following way: "aa", "ab", "bb".


xbonacci
---------------------

The fibonacci sequence takes the previous two numbers in the sequence and add them together to create the next number.  In xbonacci, the sum of the previous `x` numbers (instead of the previous 2 numbers) of the sequence becomes the next number in the sequence.  This method takes two arguments: the starting sequence with `x` number of elements and an integer `n`. The method then returns the first `n` elements in the given sequence.

```ruby
xbonacci([1, 1], 5) => [1, 1, 2, 3, 5]
xbonacci([1, 1, 1, 1], 8) => [1, 1, 1, 1, 4, 7, 13, 25]
```
