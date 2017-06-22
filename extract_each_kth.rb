def extract_each_kth(input_array, k)

r_arr = []
	input_array.each_with_index do |el, i|
		r_arr << el if (i+1)%k != 0
	end
r_arr

end