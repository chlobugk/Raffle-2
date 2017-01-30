require 'minitest/autorun'
require_relative 'offby1.rb'

class TestRaffleFunction < MiniTest::Test 
	
	def test_does_it_work
		assert_equal(true, true)
	end

	def test_same_returns_false
		my_num = '1234'
		win_num = '1234'
		results = off(win_num, my_num)
		assert_equal(false, results)
	end

	def test_offby1_returns_true
		my_num = '2245'
		win_num = '1245'
		results = off(win_num, my_num)
		assert_equal(true, results)
	end

	def test_offby2_returns_false
		my_num = '1234'
		win_num = '2334'
		results = off(win_num, my_num)
		assert_equal(false, results)
	end
	
end

class TestReturnRaffle < MiniTest::Test 

	def test_return_array
		my_num = '1234'
		win_nums = ['5678', '9999', '5656']
		assert_equal([], returning_function(my_num, win_nums))
	end

	def test_return_array_of1
		my_num = '1234'
		win_nums = ['3234', '5555', '6789']
		assert_equal(['3234'], returning_function(my_num, win_nums))
	end
end		