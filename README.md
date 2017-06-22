# ruby_practice

chunk
---------------------

Takes an array of arbitrary length and a number parameter and returns a nested array and "chunks" the array's elements into subarrays of a specified length.  Functionally similar to the built-in Ruby method `each_slice`.


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
s2 = "Dr. Bilb Onooo"
common_character_count(s1, s2) #=> 8 (3 from "Dr.", 2 empty spaces, 2 lowercase "o", 1 lowercase "i")
```

custom_ruby_eval
---------------------

This method takes a string that represents a valid mathematical expression and evaluates that expression to an integer without using the built-in Ruby method `eval`.  This method ignores the order of operations.

encode_string
---------------------

Takes a string as an input and returns a nested array wherein each sub array has two elements:  the next character in the input string, and the number of times that character appears consecutively.

```ruby
encode_string("aaaabbbbaaacc") #=> [["a", 4], ["b", 4], ["a", 3], ["c", 2]]
```

extract_each_kth
---------------------

Takes an array and a positive integer parameter `k` and returns the input array with each `k`th element removed.

```ruby
extract_each_kth([1, 2, 3, 4, 9, 10, 7], 3) #=> [1, 2, 4, 9, 7]
```

strings_rearrangement
---------------------

Checks to see if, in an array of equal length strings, it's possible to rearrange the strings such that the strings at consecutive positions in the array differ by exactly one character.

```ruby
strings_rearrangement(["aba", "bbb", "bab"]) #=> false
strings_rearrangement(["ab", "bb", "aa"]) #=> true (strings can be rearranged as "aa", "ab", "bb")
```

fibonacci
---------------------

Returns an array of the first `n` terms in [the Fibonacci Sequence](https://en.wikipedia.org/wiki/Fibonacci_number).

```ruby
fibonacci(6) => [0, 1, 1, 2, 3, 5]
```



xbonacci
---------------------

The fibonacci sequence takes the previous two numbers in the sequence and add them together to create the next number.  In xbonacci, the sum of the previous `x` numbers (instead of the previous 2 numbers) of the sequence becomes the next number in the sequence.  This method takes two arguments: the starting sequence with `x` number of elements and an integer `n`. The method then returns the first `n` elements in the given sequence.

```ruby
xbonacci([1, 1], 5) => [1, 1, 2, 3, 5]
xbonacci([1, 1, 1, 1], 8) => [1, 1, 1, 1, 4, 7, 13, 25]
```
