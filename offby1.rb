def off(win_num, my_num)	
	matches = 0
	index_position = 0

	my_num.length.times do 
		if my_num[index_position] == win_num[index_position]
			matches = matches + 1
		end
		index_position += 1 
	end

	if my_num.length - matches == 1
		true
	else
		false
	end

end


