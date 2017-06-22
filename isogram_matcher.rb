def isogram_matcher(isogram1, isogram2)

  same, count = 0, 0
  letters1, letters2 = isogram1.chars, isogram2.chars

  letters1.each_index do |i|
    same += 1 if letters1[i]==letters2[i]
    count +=1 if letters1.include?(letters2[i])
  end

  return [same, count]
  
end