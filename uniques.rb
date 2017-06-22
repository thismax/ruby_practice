def uniqs(arr1, arr2)

  uniques = []

  arr1.each do |el|
    uniques << el unless arr2.include?(el)
  end

  arr2.each do |el|
    uniques << el unless arr1.include?(el)
  end

  return uniques

end