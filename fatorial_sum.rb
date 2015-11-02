def fact(x)
	return x if x == 1
	x = x * fact(x - 1)
end

number = fact(100).to_s.split('')

sum = 0
number.each do |int|
	int = int.to_i
 sum = sum + int
end

puts sum
# p number


