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

fibonacci
---------------------

Returns an array of the first `n` terms in [the Fibonacci Sequence](https://en.wikipedia.org/wiki/Fibonacci_number).

```ruby
fibonacci(6) => [0, 1, 1, 2, 3, 5]
```

first_last_indices
---------------------

Takes a string and returns a hash in which each key is a character in the string and each value is an array of the first and last indices at which the character occurs.  If the character occurs only once, the array contains the index at which that character occurs.

```ruby
first_last_indices("apples and pears") #=> {"a"=>[0, 13], "p"=>[1, 11], "l"=>[3], "e"=>[4, 12], "s"=>[5, 15], " "=>[6, 10], "n"=>[8], "d"=>[9], "r"=>[14]}
```

isogram_matcher
---------------------

An isogram is a word of only non-repeating letters.  This method takes two isograms (as strings) with identical lengths and returns an array of two elements: the first element is the number of letters matched in both words at the same position, and the second is the number of letters matched in both words but not in the same position.

```ruby
isogram_matcher("pathfinder", "dumbwaiter") #=> [2, 6]
```

magic_numbers
---------------------

Define a magic number as a number whos digts sum to 7 (e.g., 34).  This method returns an array of the first `n` magic numbers.

```ruby
magic_numbers(8) #=> [7, 16, 25, 34, 43, 52, 59, 61]
```

max_consecutive_sum
---------------------

Takes an array of integers and an integer parameter `k` as input and returns the maxium sum of `k` consecutive elements in the array.

```ruby
max_consecutive_sum([5,10,1,2,7,7,7,1], 2) #=> 15
max_consecutive_sum([5,10,1,2,7,7,7,1], 3) #=> 21
```



strings_rearrangement
---------------------

Checks to see if, in an array of equal length strings, it's possible to rearrange the strings such that the strings at consecutive positions in the array differ by exactly one character.

```ruby
strings_rearrangement(["aba", "bbb", "bab"]) #=> false
strings_rearrangement(["ab", "bb", "aa"]) #=> true (strings can be rearranged as "aa", "ab", "bb")
```

xbonacci
---------------------

The fibonacci sequence takes the previous two numbers in the sequence and add them together to create the next number.  In xbonacci, the sum of the previous `x` numbers (instead of the previous 2 numbers) of the sequence becomes the next number in the sequence.  This method takes two arguments: the starting sequence with `x` number of elements and an integer `n`. The method then returns the first `n` elements in the given sequence.

```ruby
xbonacci([1, 1], 5) => [1, 1, 2, 3, 5]
xbonacci([1, 1, 1, 1], 8) => [1, 1, 1, 1, 4, 7, 13, 25]
```
