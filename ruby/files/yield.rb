class Car
  attr_accessor :color, :doors

  def initialize
    yield(self)
  end

end

car = Car.new do |c|
  c.color = "red"
  c.doors = 4
end

puts "My car is #{car.color} and has #{car.doors} doors "
