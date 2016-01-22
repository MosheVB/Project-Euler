
def powers_of_200(x,y,z,p,a,b,c,d)
	
	return true if 1*x + 2*y + 5*z + 10*p + 20*a + 50*b + 100*c + 200*d == 200

end

result = []


(0..200).each do |x|
	(0..100).each do |y|
		(0..40).each do |z|
			(0..20).each do |p|
				(0..10).each do |a|
					(0..4).each do |b|
						(0..2).each do |c|
							(0..1).each do |d|
								if powers_of_200(x,y,z,p,a,b,c,d) == true
									result << [x,y,z,p,a,b,c,d]
								end
							end
						end
					end
				end
			end
		end
	end
end

p result