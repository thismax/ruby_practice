# Define a method that chunks an array into a nested array of sub-arrays of length n. The last array may be of length less than n if the original array's size does not divide evenly by n.
# chunk([1,2,3,4,5], 2) => [[1,2], [3,4], [5]]
def chunk(array, n)
  
  nested = []
  until array.length == 0
    nested << array.take(n)
    n.times {|i| array.delete_at(0)}
  end
  nested
  
end
