def reverse_parentheses(s)

  if s.include?("(") && s.include?(")")
	  right_i = s.index(")")
	  left_i = 0
	  s.chars.each_with_index {|ch, i| left_i= i if ch == "(" && i < right_i}
	  s[left_i..right_i] = s[left_i+1...right_i].reverse
	end
	
  reverse_parentheses(s) if s.include?("(")
  return s

end