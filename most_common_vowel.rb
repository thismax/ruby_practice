def is_vowel?(ch)
  ["a", "e", "i", "o", "u"].include?(ch)
end

def most_common_vowel(string)
  
  frequencies = Hash.new(0)
  
  string.chars.each {|ch| frequencies[ch] += 1 if is_vowel?(ch)}

  sorted_frequencies = frequencies.sort_by {|k,v| v}

  sorted_frequencies.select {|k,v| v == sorted_frequencies[-1][-1]}.flatten.select {|x| is_vowel?(x)}.sort[0]
  
end