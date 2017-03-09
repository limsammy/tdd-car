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

	def test_default_color_of_the_car_is_yellow
		car = Car.new

		assert_equal("yellow", car.color)
	end

	def test_it_can_be_any_color
		car = Car.new("purple")

		assert_equal("purple", car.color)
	end

	def test_it_has_a_spede_of_0_by_default
		car = Car.new

		assert_equal(0, car.speed)
	end

	def test_start_increases_speed_to_50
		car = Car.new

		assert_equal(0, car.speed)

		car.start
		
		assert_equal(50, car.speed)
	end

	def test_break_decreases_speed_by_30
		car = Car.new

		assert_equal(0, car.speed)

		car.start
		
		assert_equal(50, car.speed)

		car.break 

		assert_equal(20, car.speed)
	end

end