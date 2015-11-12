def fact(x)
	if x == 0 
	return 1
	end
	x = x * fact(x-1)
	return x
end

puts fact(10)