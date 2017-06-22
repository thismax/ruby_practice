def magic_number?(n)

  arr = n.to_s.chars
  sum = 0

  arr.each do |el|
    sum += el.to_i
  end

  sum%7 == 0

end

def magic_numbers(n)

  arr = []
  i = 1

  until arr.length == n
    if magic_number?(i)
      arr << i
    end
    i += 1
  end

  arr

end


p magic_numbers(8)