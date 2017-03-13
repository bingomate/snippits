service = Hash[:oil_change => 35, :brake_job => 100, :trans_service => 100, :tune_up => 80, :tire_rotation => 20, :fuel_service => 75, :suspension_service => 200]


class Vehicle
	attr_accessor(:make, :model, :year)
	def initialize(make, model, year)
		@make = make
		@model = model
		@year = year

	end

end

puts "Welcome to the shop. What service would you like performed today?"

service.each do |menu| 
	puts 

