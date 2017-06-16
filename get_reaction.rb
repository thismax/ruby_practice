def get_reaction(lib_array, key_array)
  
	output = []

	lib_array.each do |el|
		sub_array = el.split(">>")
		sub_array = [sub_array[0],">>",sub_array[1]]
		output << sub_array
	end

  left_side = []

  output.each do |el|
    left_side << el[0]
  end
  
  left_side.uniq!
  left_side_uniq_match = []
  
  key_array.each {|el| left_side_uniq_match << el if left_side.include?(el)}
  
  final_array = []
  left_side_uniq_match.each do |i|
    output.each do |j|
      final_array << i+j[2] if j[0] == i
    end
  end
  
  final_array
  
end