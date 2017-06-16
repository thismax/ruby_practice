# Write a method that, given a string, returns a hash in which each key is a character in the string and each value is an array of the first and last indices where that character occurs. If the character occurs only once, the array should contain a single index. Consider defining helper methods.
# first_last_indices("banana") => {"b" => [0], "a" => [1, 5], "n" => [2, 4]}
def first_last_indices(str)
  hash = Hash.new(0)
  str.chars.each do |ch|
    if first_instance(str, ch) == last_instance(str,ch)
      hash[ch] = [first_instance(str, ch)]
    else
      hash[ch] = [first_instance(str, ch), last_instance(str,ch)]
    end
  end
  hash
end

def first_instance(str, ch)
  str.chars.each_index do |i|
    return i if str[i] == ch
  end
end

def last_instance(str, ch)
  index = 0
  str.chars.each_index do |i|
    index = i if str[i]==ch
  end
  index
end