# Define a method, #pair_product?, that accepts two arguments: an array of integers and a target_product (an integer). The method returns a boolean indicating whether any pair of elements in the array multiplied together equals that product. You cannot multiply an element by itself. An element on its own is not a product.
# pair_product?([3, 1, 5], 15) => true
def pair_product?(arr, target_product)
  arr.each_index do |idx|
    arr_without_el = arr[0...idx] + arr[idx+1...arr.length]
    return true if arr_without_el.include?(target_product / arr[idx])
  end
  false
end


def pair_product?(arr, target_product)

  arr.each_index do |i|
    arr.each_index do |j|
      return true if i!=j && arr[i]*arr[j] == target_product
    end
  end
  
  false
  
end