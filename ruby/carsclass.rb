class Vehicle
	attr_accessor(:make, :model, :year)
	def initialize(make, model, year)
		@make = make
		@model = model
		@year = year

	end

end

vehicle1 = Vehicle.new('Saturn', 'Ion', '2007')

puts vehicle1.make

