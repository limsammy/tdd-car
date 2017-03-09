# write tests (make assertions about our code)
# test suite

require "minitest"
require "minitest/autorun"
require "minitest/pride"

require_relative "car"

class CarTest < Minitest::Test

	def test_it_exists
		car = Car.new

		assert car
	end

	def test_it_has_four_wheels
		car = Car.new

		assert_equal(4, car.wheels)
	end

end