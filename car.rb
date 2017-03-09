# code
require "pry"

class Car

	attr_reader :wheels, :color
	attr_accessor :speed

	def initialize(color = "yellow")
		# write code that is executed on new instance
		@wheels = 4
		@color = color
		@speed = 0
	end

	def start
		# pry: stops code for debug
		# binding.pry
		self.speed += 50
	end

	def break
		# binding.pry
		self.speed -= 30
	end

end


######################### attr_reader :wheels, :color, :speed
	# def wheels
	# 	@wheels
	# end

	# def color
	# 	@color
	# end

	# def speed
	# 	@speed
	# end

########################## attr_reader + attr_writer = attr_accessor
	# def speed=(arg)
	# 	@speed = arg
	# end