require 'prime'
#this stores the prime factors of your numbwes
@moshes_magic_numbers = []
#this array stores the prime factors of a given number
@array1 = []
#this hash stores the LCM prime factors
@count_array = {}
	def find_primes(x)
		(2..x).each do |n|
		if x % n == 0 
				@array1 << n
				find_primes(x / n) unless (x / n) == 1 	
				@moshes_magic_numbers << @array1
				@array1 = []
				return
		end
	end
end

# This function yields the factors that will go into the least common multiple of your numbers
def lcm(array)
	array.each_index do |i|
		subarray = array[i]
		subarray.each do |value|
			if (subarray.count(value) > @count_array.fetch(value, 1)) ||  (@count_array.fetch(value, 1) == 1)
				@count_array.merge!(value => subarray.count(value))
			end
		end
	end
end

#run this to create the array @moshes_magic_numbers -- this will be the numbers you are using to 
#get the least common multiple prime factors; in this example you are finding the LCM of 2-x (1-x)
(2..10).each do |number|
find_primes(number)
end

# p @moshes_magic_numbers.reject(&:empty?)
lcm(@moshes_magic_numbers)

p @count_array
# initialize a total
total =1
# produce the LCM 
@count_array.each do |key, val|
	total = total * key ** val
end

puts total

