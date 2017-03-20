

class Vehicle
	attr_accessor(:make, :model, :year, :milage)
	def initialize(make, model, year, milage)
		@make = make
		@model = model
		@year = year
		@milage = milage
		@service = Hash[
				:oil_change => 35, 
				:brake_job => 100, 
				:trans_service => 100, 
				:tune_up => 80, 
				:tire_rotation => 20, 
				:fuel_service => 75, 
				:suspension_service => 200
					]
		@service_milage = Hash[
				:plan1 => 'Tire Rotation Air Filter', 
				:plan2 => 'Tire Rotation Air Filter Transmission Service'
			]
	end
	
	def service_recommend(milage)
			if milage.to_i <= 25000
				puts "#{@service_milage[:plan1]}"
			else
				puts "Youre fine"
		end
	end	
end



puts "Welcome to the shop. What kind of vehicle do you have?"
puts "What is the year of your vehicle?"
vehicle_year = gets.chomp
puts "What is the make of your vehicle?"
vehicle_make = gets.chomp
puts "What is the model of your vehicle?"
vehicle_model = gets.chomp
puts "How many miles do you have on your vehicle"
vehicle_milage = gets.chomp

my_vehicle = Vehicle.new(vehicle_make, vehicle_model, vehicle_year, vehicle_milage)



puts "What kind of service would you like to get for your #{my_vehicle.make} #{my_vehicle.model} ?"
my_vehicle.service.each do |job, cost|
	puts "#{job} :$#{cost}"
end
my_vehicle.service_recommend(my_vehicle.milage)






