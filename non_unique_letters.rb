# Define a method that accepts a string of lower case words (no punctuation) and returns an array of letters that occur more than once.
def non_unique_letters(string)
  hash = Hash.new(0)
  string.chars.each {|el| hash[el] += 1}
  hash.select {|k,v| k if v > 1}.keys
end