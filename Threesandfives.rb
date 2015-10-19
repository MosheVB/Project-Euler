@number_array = []

def find_multiples_of_x_in_y(x,y)
	x.each do |number|
		c = 1 
		while c*number < y
				@number_array << (c*number)
			c = c + 1
		end
	end
end

def sum(array)
	array = array.uniq
	total = 0
	array.each do |number|
		total = total + number
	end
	return total
end

x = [3,5]
y = 100
find_multiples_of_x_in_y(x,y)
puts @number_array
total = sum(@number_array)
puts total