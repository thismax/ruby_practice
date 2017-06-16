# A magic number is a number whose digits, when added together, sum to 7, e.g., 34. Define a method that returns an array of the first n magic numbers. You may wish to write a helper method (magic_number?) that returns a boolean indicating whether a number is magic.
# magic_numbers(3) => [7, 16, 25]
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