def xbonacci(starting_sequence, number_of_xbonacci_numbers_to_return)

  arr = starting_sequence
  len = starting_sequence.length

  arr << sum_last_n(arr, len) until arr.length == number_of_xbonacci_numbers_to_return

  return arr

end


def sum_last_n(arr, n)

  sum = 0
  arr[-n..-1].each {|el| sum += el}

  return sum
end