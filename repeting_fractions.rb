require 'bigdecimal'
require 'bigdecimal/util'

num_digits = 50

def generate_deicmal(x, num_digits)
	num_digits += 1
	number = BigDecimal(1).div(x,num_digits)
	number = number.to_s
	array = number.split("")
	index_position = 0
	array.each_with_index do |element, index|
		if element == "E"
			index_position = index
		end
	end
	array = array.slice(2, index_position -3)
	array_size = array.length
	if array_size != num_digits
		zero_array = Array.new(num_digits - array_size,"0")
		array = array + zero_array
	end
	return array
end

# def create_repition_array(array)
	# new_array  = []
	# total_num_digits = array.length
	# n = 0
	# (0..(total_num_digits - 1)).each do |start| 
	# 	n +=1
	#  	(0..(total_num_digits-n)).each do |array_end|
	# 	new_array << array.slice(start,array_end).join("")
	#  end
	# end

	# return new_array.reject{ |e| e.empty? }
# end

# def find_repitition(array,num_digits)
# 	# puts array

# end
def find_repitition(array, num_digits)
	# p array
	uniq_array = []
	sum_array = []
	if array.uniq.length == 1
		uniq_array = [0]
		# puts "repitition length = 0" 
	elsif array.length < num_digits
		uniq_array = [0]
		# puts "repitition length = 0" 
	else
		(0..9).each do |number|
			check_array = []
			check_array2 = []
			(0..(num_digits - 1)).each do |index|
				check_array << index if array[index] == number.to_s
			end
			 # p check_array
			length = check_array.length
			(0..(length-2)).each do |element|
				check_array2 << check_array[element+1] - check_array[element]
			end
			 # p check_array2
			if number == 0 && check_array2.uniq.length == 1 && check_array2.uniq.first == 1
				uniq_array = [0]
			# elsif  number !=0 && check_array2.uniq.uniq == 1
			# 	uniq_array = [1]
			else
			uniq_array << check_array2.uniq
			uniq_array = uniq_array - [[]]
		end
			# uniq_array << check_array2.uniq.inject(:+)
			# puts " Uniq array sum = #{check_array2.uniq.inject(:+)}"
			# if check_array2.uniq.length == 1
			# 	puts "repitition length = #{check_array2.uniq}"
			# else 
			# 	 puts "Nope"
			# end
		end
		# p sum_array.uniq.compact
		# p sum_array.compact
	# sum_array = sum_array.uniq.compact 
		# sum_array = [0] if sum_array.uniq.compact.length > 1
		# p sum_array
	end
	# uniq_array.each do |subarray|
	# 	sum_array << subarray.inject(:+)
	# end
	# p sum_array
	uniq_array = sum_array if sum_array.uniq.length == 1
	return uniq_array
end	

max = 0
(1..999).each do |number|
puts "number is #{number}"
p repitition_length = find_repitition(generate_deicmal(number,num_digits),num_digits) 
 # max = repitition_length[0] if repitition_length[0] >= max
end
# puts max


# p find_repitition(generate_deicmal(19,100),100)
