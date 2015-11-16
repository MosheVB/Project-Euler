require 'bigdecimal'
require 'bigdecimal/util'

num_digits = 24

def generate_deicmal(x, num_digits)
	num_digits += 2
	number = BigDecimal(1).div(x, num_digits)
	number = number.to_s
	array = number.split("")
	index_position = 0
	array.each_with_index do |element, index|
		if element == "E"
			index_position = index
		end
	end
	array = array.slice(2, index_position -1)
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
	max = 0
	repition_max = 1
	array_new = []
	array.each_with_index do |item,index|
		if array[index].length <= (num_digits / 2)

		counts[item] += 1
		end
	end
	counts.each do |hash, key|
		num_length = hash.length 
		if key >= repition_max
			repition_max = key
			# puts repition_max
		end
		if num_length >= max 
			max = num_length
			# puts hash
		end
	end 
	while array_new.length == 0
		counts.each do |hash, key|
		 if hash.length == max && key == repition_max
		 	array_new << hash
		 end
		end
		repition_max -= 1 unless repition_max == 1
	end
	puts "Repitition count of #{repition_max} with length #{max}"
	return array_new
end

num_digits = num_digits + 1 if num_digits % 2 != 0

p find_repitition(create_repition_array(generate_deicmal(7,num_digits)), num_digits)
# notes: find the largest number that occurs more than once. then do something...

