def is_vowel?(ch)
  vowels = ["a", "e", "i", "o", "u"]
  vowels.include?(ch)
end

def slice_between_vowels(word)
  
  left_idx = 0
  right_idx = word.length - 1

  until is_vowel?(word[left_idx])
    left_idx += 1
  end
  
  until is_vowel?(word[right_idx])
    right_idx -= 1
  end

  left_idx += 1
  right_idx -= 1

  word[left_idx..right_idx]

end