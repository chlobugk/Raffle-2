require 'minitest/autorun'
require_relative 'raffle_winner.rb'

class TestRaffle < MiniTest::Test 

	def test_1_equals_1
		assert_equal(1,1)
	end

	def test_number_exists
		ticket_num = '1'
		winning_num_array = []
		assert_equal(false, raffle_function(ticket_num, winning_num_array))
	end

	def test_returns_true
		ticket_num = '1234'
		winning_num_array = ['1234']
		assert_equal(true, raffle_function(ticket_num, winning_num_array))
	end

	def test_multiple_returns_false
		ticket_num = '5678'
		winning_num_array = ['1234', '4321', '5555']
		assert_equal(false, raffle_function(ticket_num, winning_num_array))
	end

	def test_multiple_returns_true
		ticket_num = '5555'
		winning_num_array = ['1234', '5555', '5678']
		assert_equal(true, raffle_function(ticket_num, winning_num_array))
	end


end