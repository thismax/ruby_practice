def word_with_most_repeats(sentence)

  max_word = ""

  sentence.split.each do |el|

    if repeated_letters(el) > repeated_letters(max_word)
      max_word = el
    end

  end

  return max_word

end

def repeated_letters(word)

  hash = Hash.new(0)
  word.chars.each {|el| hash[el] += 1}
  hash.delete_if {|k,v| v <=1}.length
  
end

