def common_character_count(s1, s2)
    h1 = Hash.new(0)
    h2 = Hash.new(0)
    
    s1.each_char {|ch| h1[ch] += 1}
    s2.each_char {|ch| h2[ch] += 1}
    
    common_ch = h1.keys.select {|ch| h2.keys.include?(ch)}
    arr = []
    
    common_ch.each do |el|
      if s1.count(el) < s2.count(el)
        arr << s1.count(el)
      else
        arr << s2.count(el)
      end
    end
    
    arr.reduce(:+)
    
end