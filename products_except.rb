def array_product(array)
  product = 1
  array.each {|el| product *= el}
  product
end

def products_except_me(numbers)
  prod_arr = []
  numbers.each_index do |i|
    new_arr = numbers.rotate(i).drop(1)
    prod_arr << array_product(new_arr)
  end
  prod_arr
end