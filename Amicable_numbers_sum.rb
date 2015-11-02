def divisor_sum(x)
	array = []
	total = 0
	if x == 1
		total = 1 
		return total
	end 
	(1..(x-1)).each do |number|
		array << number if x % number == 0 
	end
	# p array
	array.each do |number|
		total += number
	end
	return total
end

def amicable(x)
	sum_1 = divisor_sum(x)
	if divisor_sum(sum_1) == x && sum_1 != x
		return true
	else
		return false
	end
end
# (1..999).each do |number|
# 	devisors(number)
# end

total = 0
(1..9999).each do |test|
	if amicable(test) == true 
 		total = total + divisor_sum(test)
	end
end

puts total