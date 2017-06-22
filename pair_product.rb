def pair_product?(arr, target_product)

  arr.each_index do |i|
    arr.each_index do |j|
      return true if i!=j && arr[i]*arr[j] == target_product
    end
  end
  
  false
  
end