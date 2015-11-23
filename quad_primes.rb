require 'Prime'
# def count_primes(number)
# 	count = 0
# 	(2..(number/2)).each do |test|
# 		count +=1 if number % test == 0
# 	end
# 	return count
# end
max_a = 0
max_b = 0
prime_count = 0
(-999..999).each do |a|
	(1..999).each do |b|
		n = 0
		prime = true
		count = 0
		while prime == true
			y = n**2+a*n+b 
			if Prime.prime?(y)
				count += 1 
				n += 1
			else 
				prime = false
				# puts "a=#{a}, b=#{b}, n=#{n + 1}"
				# puts count
				# puts "#{prime}"
				break
			end
			# puts "a=#{a}, b=#{b}, n=#{n}"
			# puts count
			# puts "#{prime}"
			if count >= prime_count
				max_a = a
				max_b = b
				prime_count = count
			end
		end
	end
end

puts prime_count
puts max_b * max_a