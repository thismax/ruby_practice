def max_consecutive_sum(a, k)
  
    s=[0]
    
    for i in 0...n=a.size
        s[i+1]=s[i]+a[i]
    end
    
    (0..n-k).map{|i| s[i+k]-s[i]}.max
    
end
