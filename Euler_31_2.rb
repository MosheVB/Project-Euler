target = 400
count = 0

200.step(0,-200) do |x|
	x.step(0, -100) do |y|
		y.step(0, -50) do |z|
			z.step(0, -20) do |t|
				t.step(0,-10) do |r|
					r.step(0, -5) do |q|
						q.step(0, -2) do |w|
							
								count +=1
							
						end
					end
				end
			end
		end
	end
end

puts count