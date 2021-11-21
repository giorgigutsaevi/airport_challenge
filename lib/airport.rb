require_relative 'plane.rb'

class Airport

	attr_reader :capacity, :hangar
	DEFAULT_CAPACITY = 5

	def initialize(capacity = DEFAULT_CAPACITY)
		@capacity = capacity
		@hangar = []
	end

	def land(plane)
		fail "Unable to land during the storm" if stormy_weather?
		raise "Airport full" if @hangar.size == @capacity
		@hangar.push(plane)
	end

	def take_off
		raise "Can't take off during the storm." if stormy_weather?
		@hangar.pop
	end

	def stormy_weather?
		rand(8) > 1
	end


end

