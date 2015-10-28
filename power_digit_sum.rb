x = 2**1000
x  = x.to_s
y = x.split("")
sum = 0
y.each do |t|
	t = t.to_i
 sum = sum + t
end
puts sum