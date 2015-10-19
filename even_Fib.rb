@my_array = [1,2]

def fib(max)

	start = 2
	while (@my_array.last + @my_array[-2]) < max
		@my_array << (@my_array[start -2] + @my_array[start -1])
		start = start +1
	end
end


def sum_even(array)
	total = 0
	array.each do |number|
		if number % 2 == 0
			total = total + number
		end
	end
	return total
end


last = 4000000
fib(last)
puts sum_even(@my_array)