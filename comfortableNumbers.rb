def comfortableNumbers(l, r)
    n = 0 
    for a in l..r
        for b in (a+1)..[a+s(a),r].min
            if (a-b).abs <= s(b)
                n+=1
            end
        end
    end
    n
end

def s(x)
	x.to_s.chars.map{|el| el.to_i}.inject(:+)
end

