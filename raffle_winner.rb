def raffle_function(num, win)
	
	# counter = 0
	# win.each do |winning_ticket|

	# 	if num == winning_ticket
	# 		counter = counter + 1
	# 	end

	# end

	# if counter > 0
	# 	true
	# else
	# 	false
	# end

	counter = []
	win.each do |ticket|
		if num == ticket
			counter << 1
		end
	end

	if counter.length > 0
		true
	else
		false
	end


end