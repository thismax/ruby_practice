def chunk(array, n)
  
  nested = []
  until array.length == 0
    nested << array.take(n)
    n.times {|i| array.delete_at(0)}
  end
  nested
  
end
