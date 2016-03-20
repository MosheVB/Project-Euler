@ans_array = []
def multiplication(x,y)
	
	xy = x.to_s + y.to_s
	
	if xy.split('').uniq.length == xy.length && !xy.include?("0")
		
		prod = x * y
		if prod.to_s.length == prod.to_s.split('').uniq.length && !prod.to_s.include?("0")
			xyprod = prod.to_s + xy
			if xyprod.length == xyprod.split('').uniq.length
				 @ans_array << prod if xyprod.length == 9 
			end
		end
	end
end

(2..9999).each do |x|
		(2..9999).each do |y|
			if x.to_s.length + y.to_s.length <6
			multiplication(x,y)
		end
	end
end

sum = @ans_array.uniq.inject(0){|sum,x| sum + x}
puts sum
