# Write a method that, given a sentence without punctuation or capitalization, returns the word with the greatest number of repeated letters. Return the first word if there's a tie. It doesn't matter how often individual letters repeat, just that they repeat.
# word_with_most_repeats("I took the road less traveled and that has made all the difference") => "difference" because "difference" has two repeated letters, more than the other words.
def word_with_most_repeats(sentence)
  max_word = ""
  sentence.split.each do |el|
    if repeated_letters(el) > repeated_letters(max_word)
      max_word = el
    end
  end
  max_word
end

#write a method that returns the number of repeated letters in a words

def repeated_letters(word)
  hash = Hash.new(0)
  word.chars.each {|el| hash[el] += 1}
  hash.delete_if {|k,v| v <=1}.length
end

word_with_most_repeats("I took the road less traveled and that has made all the difference")