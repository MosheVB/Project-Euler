def find_crazy (nom, dom)
	# p "start"
	ans = nom.to_f/dom.to_f 
	if ans < 1.0 && nom % 10 != 0 
		
		nom_array = nom.to_s.split('').to_a
		dom_array = dom.to_s.split('').to_a
		nom_array = nom_array.uniq
		dom_array = dom_array.uniq

		# p "nom_array = #{nom_array}"
		# p "dom_array = #{dom_array}"
		if dom_array.include?(nom_array[0])
			dom_array = dom_array.delete_if {|x| x == nom_array[0]}
			nom_array = nom_array[1]
		# p "nom_array2 = #{nom_array}"
		# p "dom_array2 = #{dom_array}"
		elsif dom_array.include?(nom_array[1])
			dom_array = dom_array.delete_if {|x| x == nom_array[1]}
			nom_array = nom_array[0]
		# p "nom_array3 = #{nom_array}"
		# p "dom_array3 = #{dom_array}"
		else 
			return
		end
		dom_num = dom_array.join.to_f
		unless dom_num == 0 || dom_array.empty? 
			if ans == nom_array.to_f/dom_num
				# p "nom_array = #{nom_array}"
				# p "dom_num = #{dom_num}"
				# p "nom = #{nom}"
				# p "dom = #{dom}"
				return true
			end
		end

		# puts dom_int
		# unless dom_int == 0
			# ans2 = nom_int/dom_int
		# if ans == nom_int/dom_int
			# puts ans2
		# end
		# end
	end
# p "stop"

end

nom_prod = 1
dom_prod = 1
(10..99).each do |nom|
	(10..99).each do |dom|
		if find_crazy(nom,dom)
			nom_prod = nom_prod * nom
			dom_prod = dom_prod * dom
		end
	end
end

puts nom_prod
puts dom_prod

