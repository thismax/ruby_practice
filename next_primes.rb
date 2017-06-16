# given a list of numbers [1,2,5,6,8], if an element in the list is prime, modify the list to make that element the next prime number.  So, the above list should become [1,3,7,6,8].

def is_prime? (n)
  return false if n <= 1
  
  count = 0
  
  (2..n).each do |el|
    count += 1 if n%el == 0
    return false if count > 1
  end
  
  return true
  
end

def next_prime (n)
  
  return_val = n+1
  
  until is_prime?(return_val)
    return_val += 1
  end
  
  return_val
  
end

def list_primes (input_array)

  input_array.map! {|x| is_prime?(x) ? next_prime(x) : x}

end


list_primes([1,2,5,6,17,8])