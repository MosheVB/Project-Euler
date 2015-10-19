@prime_list = [2]
def create_prime(end_value)
	(2..(end_value**2)).each do |x|
		bool = true
		(2..(end_value)).each do |y|
			if x % y == 0 
				bool = false
				break
			end
			@prime_list << x unless ((bool == false) || (@prime_list.include? x))
		end
	end
end

create_prime(5)
p @prime_list

#test from github
#push back test
#Used "git pull" after commiting on site
#Used "get commit -a -m "with a message"
#then used a git push
blah