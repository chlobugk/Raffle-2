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

def returning_function(my_num, win_nums)
	array = []

	win_nums.each do |win_num|

		if off(win_num, my_num) 
			array << win_num
		end

	end
	array
end


