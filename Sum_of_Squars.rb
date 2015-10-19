total1 = 0
total2 = 0

(1..100).each do |x|
	total1 = total1 + x**2 
end

(1..100).each do |x|
	total2 = total2 + x
end 
total2 = total2 ** 2

puts total2 - total1