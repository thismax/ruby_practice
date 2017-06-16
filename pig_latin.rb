def pig_latin(sentence)
  pig_arr = []
  sentence.split.each { |el| pig_arr << latinize(el) }
  pig_arr.join(" ")
end

def is_vowel?(ch)
  ["a","e","i","o","u"].include?(ch)
end

def latinize(word)
  first_slice = []
  word.chars.each do |el|
    break if is_vowel?(el)
    first_slice << el
  end
  word.chars.rotate(first_slice.length).join + "ay"
end 