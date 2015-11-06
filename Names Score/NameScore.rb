name_list = []
File.readlines("sorted_names.txt").each do |line|
	name_list << line.chomp
end

def word_score(word)
	char_array = word.split(//)
	final = 0
	char_array.each do |letter|
		case letter
		when "A"
			final += 1
		when "B"
			final += 2
		when "C"
			final += 3
		when "D"
			final += 4
		when "E"
			final += 5
		when "F"
			final += 6
		when "G"
			final += 7
		when "H"
			final += 8
		when "I"
			final += 9
		when "J"
			final += 10
		when "K"
			final += 11
		when "L"
			final += 12
		when "M"
			final += 13
		when "N"
			final += 14
		when "O"
			final += 15
		when "P"
			final += 16
		when "Q"
			final += 17
		when "R"
			final += 18
		when "S"
			final += 19
		when "T"
			final += 20
		when "U"
			final += 21
		when "V"
			final += 22
		when "W"
			final += 23
		when "X"
			final += 24
		when "Y"
			final += 25
		when "Z"
			final += 26
		end
	end
	return final
end
# p name_list
total = 0
name_list.each_with_index do |word,index|
	index += 1
	total = total + (word_score(word) * index)
end
puts total
