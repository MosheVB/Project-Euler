def generate_set(n)
count = 1
while n > 1
	# puts n
	if n % 2 == 0
		n = n/2
		count = count +1
else 
	n = 3*n + 1
	count = count + 1
end
end
# puts n
return count
end

n = 2
final = 0
while n < 1000000
	longest = generate_set(n)
	if longest > final 
		final = longest
		start = n
	end
	n += 1
end

puts final 
puts start

# puts generate_set(1000000)