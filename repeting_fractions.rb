require 'bigdecimal'
require 'bigdecimal/util'

def generate_deicmal(x, num_digits)
	num_digits += 1
	number = BigDecimal(1).div(x, num_digits)
	number = number.to_s
	array = number.split("")
	array = array.slice(2,num_digits - 1)
	return array
end

def create_repition_array(array)
	new_array  = []
	total_num_digits = array.length
	n = 0
	(0..(total_num_digits - 1)).each do |start| 
		n +=1
	 	(0..(total_num_digits-n)).each do |array_end|
		new_array << array.slice(start,array_end).join("")
		
	 end
	end

	return new_array.reject{ |e| e.empty? }
end


p create_repition_array(generate_deicmal(7,20))

# notes: find the largest number that occurs more than once. then do something...

