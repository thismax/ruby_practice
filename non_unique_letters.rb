def non_unique_letters(string)
  hash = Hash.new(0)
  string.chars.each {|el| hash[el] += 1}
  hash.select {|k,v| k if v > 1}.keys
end
