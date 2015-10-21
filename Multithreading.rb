require 'thread'

def count(start,stop)
	total = 1
	(start..stop).each do |x|
		total = total * x
		# puts "#{x} printed at #{Time.now}, thread #{print_this}"
	end
	return total
end


# t1 = Thread.new{count(5)}

# t1 = Thread.new{count(1,200000)}
# t2 = Thread.new{count(200001,400000)}
# t3 = Thread.new{count(400001,600000)}
# t4 = Thread.new{count(600001,800000)}
# t1.join
# t2.join
# t3.join
# t4.join
# total = t1.value * t2.value * t2.value * t4.value
# puts total
 count(1,800000)

 #results: single 8 min 4 threads 2 min
