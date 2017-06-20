# given two hashes, define a method called #combine that merges the two, and if there are duplicate keys, create an array of the associated values

#hash_a = {:a => 1, :b => 2, :c => 3}
#hash_b = {:a => 2, :d => 4, :e => 5}
# combine(hash_a, hash_b) #=> {:a => [1,2], :b => 2, :c => 3, :d => 4, :e => 5}

def combine (hash1, hash2)
  
  hash1.each do |k, v|
    if hash2.has_key?(k)
      hash1[k] = [v, hash2[k]]
    end
    
  end
  
  hash2.merge(hash1)
  
end

hash_a = {:a => 1, :b => 2, :c => 3, :d => "hi"}
hash_b = {:a => 2, :d => 4, :e => 5}

p combine(hash_a, hash_b)