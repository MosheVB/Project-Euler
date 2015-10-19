require 'prime'

@moshes_magic_numbers = []

def find_primes(x)
	(2..x).each do |n|
		if x % n == 0 
			if Prime.prime?(n)
				@moshes_magic_numbers << n
				find_primes(x / n) unless (x / n) == 1
				return @moshes_magic_numbers
			end
		end
	end
end

def check_pal(input)
	input = input.to_s
	if input == input.reverse
	return true
end
end

def largest_pal(max, devisors)
	(1..max).reverse_each do |value|
		if check_pal(value)
			find_primes(value)
			if @moshes_magic_numbers.length >= devisors
				puts "#{value} matches conditions"
				return
			else 
				@moshes_magic_numbers = []
				if value == 1
					puts "Nothing exists"
				end
			end
		end
	end
end

def largest_pal_2(digits)
	pal_list = []
	min_range = 10**digits
	n_nines = 9*(10**(digits+1)*(1.0/9)).to_i

	(min_range**2..n_nines**2).reverse_each do |number|
		if check_pal(number)
			find_primes(number)

			puts "#{number} is your number"
			puts @moshes_magic_numbers
			puts ""
			@moshes_magic_numbers = []

		end
	end	
end

def largest_pal_3(digits)
	pal_list = []
	min_range = 10**(digits-1)
	n_nines = 9*(10**(digits)*(1.0/9)).to_i
	(min_range..n_nines).reverse_each do |number_1|
		(min_range..n_nines).reverse_each do |number_2|
			value = number_1 * number_2
			if check_pal(value)
				pal_list << value
			end
		end
	end
	puts pal_list.max 
end

largest_pal_3(3)
