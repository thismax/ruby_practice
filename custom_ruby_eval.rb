#run through the string, split the string based on presence of operators (+-/*)

def main(input = "5+5")

	#return str unless ["*", "-", "+", "/"].include?(str)
	locations = operator_locations(input)
	index = locations.values.flatten.sort
	start = 0
	total = 0

	index.each_with_index do |el, i|
		mid = el
		if index[i+1]
			fin = index[i+1]
		else
			fin = -1
		end

		total = maths(start, mid, fin, input)
		start = total 

	end

	puts total

end

def maths(start, mid, fin, input)
	
	if start == 0 
		s1 = input[start...mid]
	else
		s1 = start.to_s
	end

	s2 = input[mid+1..fin]
	operator = input[mid]


	if operator == "+"
		total = s1.to_i+s2.to_i
	elsif operator == "-"
		total = s1.to_i-s2.to_i
	elsif operator == "*"
		total = s1.to_i*s2.to_i
	elsif operator == "/"
		total = s1.to_i/s2.to_i
	end

	return total

end



def operator_locations(str)

	arr = ["*", "-", "+", "/"]
	operator_hash = Hash.new{|hsh,key| hsh[key] = []}
	str.chars.each_with_index do |ch, i|
		if arr.include?(ch)
			operator_hash[ch] << i
		end
	end

	return operator_hash

end