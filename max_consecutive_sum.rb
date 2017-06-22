def max_consecutive_sum(numbers, k)
  
    s=[0]
    
    for i in 0...n=numbers.size
        s[i+1]=s[i]+number[i]
    end
    
    (0..n-k).map{|i| s[i+k]-s[i]}.max
    
end
