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

total = 0
Prime.each(2000000) do |x|
	total = total + x
end
puts total
#puts @moshes_magic_numbers

