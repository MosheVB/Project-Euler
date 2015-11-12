@fib_set = [1,1,2]
def create_fib(nth)
	if nth == 0 || nth  == 1 || nth == 2
		return 1
	end
	x = create_fib(nth -1) + create_fib(nth - 2)
	return x
end

def explicit_fib(n)
	fib = 0
	fib = ( (1 + Math.sqrt(5) )**n - (1 - Math.sqrt(5))**n ) / ( 2**n * Math.sqrt(5) )
	return fib.floor
end

def fib
	place_one = @fib_set[2]
	place_two = @fib_set[1]
	@fib_set[2] = @fib_set[2] + @fib_set[1]
	@fib_set[1] = place_one
	@fib_set[0] = place_two
end

@fib_set
n = 3
while @fib_set[2].to_s.length < 1000
	fib
	# p @fib_set
	n += 1 
end
puts n
# puts create_fib(n).to_s.length 
# puts create_fib(n)
# puts n

# p explicit_fib(999).to_s.length

