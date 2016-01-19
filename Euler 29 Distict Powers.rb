@terms = []

def powers(base,power)
(2..base).each do |x|
	(2..power).each do |y|
		@terms << x ** y
	end
end
end
unique = []

powers(100,100)
unique = @terms.uniq
p unique.count

