require "pry"

class Car

	attr_reader :wheels, :color
	attr_accessor :speed

	def initialize(color = "yellow")
		@wheels = 4
		@color = color
		@speed = 0
	end

	def start
		self.speed += 50
	end

	def break
		self.speed -= 30
	end

	def stop
		self.speed = 0
	end

end