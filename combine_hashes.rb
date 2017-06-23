def combine(hash1, hash2)
  
  hash1.each do |k, v|

    if hash2.has_key?(k)
      hash1[k] = [v, hash2[k]]
    end
    
  end
  
  return hash2.merge(hash1)
  
end