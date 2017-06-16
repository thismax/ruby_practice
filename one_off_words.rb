#Write a method named one_off_words(str, word_list) which takes in a string and an array of valid words (the word_list). It should return an array of words from the word_list which are the same except for a single letter at a single position.

#Do not return words of that differ in length from str.

#For instance, "boot" and "boom" are nearby (differ in 4th letter), but "loot" and "tool" are not (differ in first and fourth letters). Note that position matters.

#You may assume that the input string and word list contain only lower case letters.

def one_off_words(str, word_list)
  
  arr = []
  word_list.each {|el| arr << el if nearby?(str, el)}
  arr
  
end


def nearby?(word1, word2)
  
  ch1 = word1.chars
  ch2 = word2.chars
  count = 0
  
  ch1.each_index do |i|
    count += 1 if ch1[i] != ch2[i]
  end
  
  return true if count == 1 
  false
  
end