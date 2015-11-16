require 'bigdecimal'
require 'bigdecimal/util'

num_digits = 12

def generate_deicmal(x, num_digits)
	num_digits += 2
	number = BigDecimal(1).div(x, num_digits)
	number = number.to_s
	array = number.split("")
	array = array.slice(2, num_digits - 1)
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

def find_repitition(array,num_digits)
	counts  = Hash.new 0
	array.each_with_index do |item,index|
		if array[index].length <= (num_digits / 2)

		counts[item] += 1
		end
	end
	# counts.each do |number|
	# 	puts number
	# 		end
	return counts
end

num_digits = num_digits + 1 if num_digits % 2 != 0

p find_repitition(create_repition_array(generate_deicmal(7,num_digits)), num_digits)

# notes: find the largest number that occurs more than once. then do something...

