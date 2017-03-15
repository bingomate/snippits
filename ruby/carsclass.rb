

class Vehicle
	attr_accessor(:make, :model, :year, :milage)
	def initialize(make, model, year, milage)
		@make = make
		@model = model
		@year = year
		@milage = milage
		@service = Hash[
						:"Oil Change" => 35, 
						:"Brake Job" => 100, 
						:"Transmission Service" => 100, 
						:"Tune Up" => 80, 
						:"Tire Rotation" => 20, 
						:"Fuel System Service" => 75, 
						:"Suspension Service" => 200,
						:"Air Filter" => 20
					]
		@service_milage = Hash[
						:plan1 => ", 
						:plan2 => "Tire Rotation, Air Filter and Transmission Service",
						:plan3 => "Tire Rotation, Air Filter and Brake Job"
					]
	end
	
	def service_recommend(milage)
			x = @milage.to_i
			case x
			when 1..25000
				puts "#{@service_milage[:plan1]}"
			when 25001..50000
				puts "#{@service_milage[:plan2]}"
			when 50001..75000
				puts "#{@service_milage[:plan3]}"
			else
				puts "Time to get a new car!"
			end
	end	

	def service_list()
		@service.each do |job, cost| 
			puts "#{job} : $#{cost}"
		end
	end

end

=begin
puts "Welcome to the shop. What kind of vehicle do you have?"
puts "What is the year of your vehicle?"
vehicle_year = gets.chomp
puts "What is the make of your vehicle?"
vehicle_make = gets.chomp
puts "What is the model of your vehicle?"
vehicle_model = gets.chomp
puts "How many miles do you have on your vehicle"
vehicle_milage = gets.chomp
=end
my_vehicle = Vehicle.new('Saturn', 'Ion', '2007', 22000)

#my_vehicle = Vehicle.new(vehicle_make, vehicle_model, vehicle_year, vehicle_milage)



puts "What kind of service would you like to get for your #{my_vehicle.make} #{my_vehicle.model} ?"
my_vehicle.service_list()

puts "Based on your midlage, it's recommended to get these services"
my_vehicle.service_recommend(my_vehicle.milage)


	



