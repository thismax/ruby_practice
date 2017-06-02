# Brute force approach.  

def stringsRearrangement(inputArray)

	perms = inputArray.permutation.to_a   

	perms.each do |sub_array|

		count = 0 
		
		sub_array.each_with_index do |el, idx|

			if sub_array[idx+1] && compare_strings(sub_array[idx], sub_array[idx+1])
				count += 1
			end

			return true if count == sub_array.length - 1

		end

  end
  
	return false
	
end

# Checks to see if two strings differ by only one character.

def compare_strings(string1, string2)

	count = 0
	string1.chars.each_index do |i|
		count += 1 if string1[i] != string2[i]
	end

	count == 1 ? true : false

end