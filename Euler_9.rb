(1..500).each do |x|
	(1..500).each do |y|
		(1..500).each do |z|
			if (x+y+z == 1000) && (x**2 + y**2 == z**2) && ((x << y << z))
				puts x
				puts y
				puts z
				puts x*y*z
			end
		end
	end
end
