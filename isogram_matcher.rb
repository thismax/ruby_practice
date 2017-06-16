# An isogram is a word of only non-repeating letters. Define a method that, given two isograms of the same length, returns an array of two elements indicating matches: the first number is the number of letters matched in both words at the same position, and the second is the number of letters matched in both words but not in the same position.

#failure: isogram_matcher("or", "go"): expected [0, 1], returned nil
#failure: isogram_matcher("unpredictably", "hydromagnetic"): expected [1, 8], returned nil

def isogram_matcher(isogram1, isogram2)
  same, count = 0, 0
  letters1, letters2 = isogram1.chars, isogram2.chars
  letters1.each_index do |i|
    same += 1 if letters1[i]==letters2[i]
    count +=1 if letters1.include?(letters2[i])
  end
  [same, count]
end
