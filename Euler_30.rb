def power_sum_magic(input,power)
	sum = 0
	num_array = []
	num_array = input.to_s.split(//)
	num_array.each do |x|
		x = x.to_i
		sum = sum + x ** power
	end
	return sum if sum == input
end

results = []

(2..1000000).each do |number|
 results << power_sum_magic(number,5)  
end

p results.compact.reduce(:+)


