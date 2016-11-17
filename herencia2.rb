class Vehicle
attr_reader :age, :number_of_wheels, :color

	def what_am_i?
	  self.class
	end

    def age!
    end
end

class Motorized < Vehicle
attr_reader :has_motor, :tank_size, :refuel 	
end	

class Motorbike < Motorized
  def age
    1 
  end
end

class Car < Motorized
  def age
  	2
  end
end

class Bicycle < Vehicle
  attr_reader :number_of_gears
	def initialize(number_of_gears)
		@number_of_gears = number_of_gears
  end
  
  def age
    3
  end
end

class Skateboard < Vehicle
  def age
    4
  end
end

moto = Motorbike.new
car = Car.new
bike = Bicycle.new(8)
skateboard = Skateboard.new
 	

vehicles = [car, moto, bike, skateboard]

vehicles.each do |vehicle|
 	vehicle.age!
 	puts "#{vehicle.what_am_i?} responds to:"
 	puts "\tNumber of wheels: #{vehicle.respond_to?(:number_of_wheels) == true}" 
  puts "\tColor: #{vehicle.respond_to?(:color) == true }"
  puts "\tAge!: #{vehicle.respond_to?(:age!) == true}"
  puts "\tHas motor: #{vehicle.respond_to?(:has_motor)  == true}"
  puts "\tTank size: #{vehicle.respond_to?(:tank_size) == true}"
  puts "\tRefuel: #{vehicle.respond_to?(:refuel) == true}"
  puts "\tNumber of gears: #{vehicle.respond_to?(:number_of_gears) == true}"
  puts "\tAge: #{vehicle.age}"
end







