# Given an array of numbers, return an array of all the products remaining when each element is removed from the array.
# You may wish to write a helper method: array_product.

# products_except_me([2, 3, 4]) => [12, 8, 6], where:
#   12 because you take out 2, leaving 3 * 4
#   8, because you take out 3, leaving 2 * 4
#   6, because you take out 4, leaving 2 * 3

# products_except_me([1, 2, 3, 5]) => [30, 15, 10, 6], where:
#   30 because you take out 1, leaving 2 * 3 * 5
#   15, because you take out 2, leaving 1 * 3 * 5
#   10, because you take out 3, leaving 1 * 2 * 5
#   6, because you take out 5, leaving 1 * 2 * 3

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