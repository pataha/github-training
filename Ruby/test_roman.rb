require_relative 'roman'
require 'test/unit'
class TestRoman < Test::Unit::TestCase
	NUMBERS = { 1 => "i", 2 => "ii", 3 => "iii", 4 => "iv", 5 => "v", 9 => "ix", 101 => "ci", 1001 => "mi", 4001 => "mmmmi", 4805 => "mmmmdcccv"}
	def test_simple
		NUMBERS.each do |n, roman|
			r = Roman.new(n)
			assert_equal(roman, r.to_s)
			# print "\n#{n}: #{r.to_s}"
		end
	end

	def test_range
		Roman.new(1)
		Roman.new(4999)
		assert_raises(RuntimeError) { Roman.new(0) }
	end

	def teardown
		puts "\t#{passed?}"
	end
end