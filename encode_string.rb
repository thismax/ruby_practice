def encoder(str)

  arr = []

  str.chars.each_with_index do |ch, i|

    if ch != str.chars[i+1]
      arr << ch
      arr << i+1
      break
    end

  end

  return arr

end

def encode_string(str)

  arr = []

  until str.length == 0
    arr << encoder(str)
    (1..encoder(str)[-1]).each {|el| str[0] = ""}
  end

  return arr

end  

