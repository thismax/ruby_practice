# Define a method that given an array, returns another array of only the unique elements from the first. Do not use the built-in uniq method.
# uniq([5, 5, 5, 5]) => [5]
# uniq([1, 2, 1, 3, 3]) => [1, 2, 3]
def uniq(arr)
  u_arr = []
  arr.each do |el|
    u_arr << el unless u_arr.include?(el)
  end
  u_arr
end

# Define a method that receives two arrays as arguments and returns a new array of arguments unique among both arrays (but not necessarily within the array it occurs). Maintain original (intra- and inter-array) order.
# all_uniqs([1, 1, 3, 6], [2, 3, 6]) => [1, 2]
# all_uniqs([1, 2, 3], [1, 2, 3]) => []
def all_uniqs(arr1, arr2)
  uniques = []
  arr1.each do |el|
    uniques << el unless arr2.include?(el)
  end
  arr2.each do |el|
    uniques << el unless arr1.include?(el)
  end
  uniques
end