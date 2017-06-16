def extract_each_kth(input_array, k)

	chunks = input_array.each_slice(k).to_a
	chunks.each do |el|
	  el.delete_at(-1) if el.size == k
	end
	chunks.flatten
    
end

def extract_each_kth(input_array, k)

r_arr = []
input_array.each do |el|
	r_arr << el if el%k != 0
end
r_arr

end
