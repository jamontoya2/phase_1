class Vehicle

  attr_accessor :number_of_wheels, :color, :age

  # def initialize(number_of_wheels, color, age)
  #   @number_of_wheels = number_of_wheels
  #   @color = color
  #   @age = age
  # end

  def what_am_i?
    self.class

    # Este método va a ser utilizado por varias clases y deberá regresar 
    # el nombre de la clase desde la cual se corrió.
    # ej.
    # bocho = Car.new
    # bocho.what_am_i? => Car
  end

  def age! 
  end
end

class Motorized < Vehicle
  
  attr_accessor :has_motor, :tank_size, :refuel

  # def initialize(number_of_wheels, color, age, has_motor, tank_size, refuel)
  #   super(number_of_wheels, color, age)
  #   @has_motor = has_motor
  #   @tank_size = tank_size
  #   @refuel = refuel
  # end
end

class Motorbike < Motorized
  def age
    4
  end
end

class Car < Motorized
  def age
    2
  end
end

class Bicycle < Vehicle

  attr_accessor :number_of_gears

  def initialize(number_of_gears)
    @number_of_gears = number_of_gears
  end

  def age
    3
  end

end

class Skateboard < Vehicle
  def age
    1
  end
end

moto = Motorbike.new
car = Car.new
bike = Bicycle.new(8)
skateboard = Skateboard.new

vehicles = [moto, car, bike, skateboard]


vehicles.each do |vehicle|
  vehicle.age!
  puts "#{vehicle.what_am_i?} responds to:"
  puts "\tNumber of wheels: #{vehicle.respond_to?(:number_of_wheels) == true}"
  puts "\tColor: #{vehicle.respond_to?(:color) == true}"
  puts "\tAge!: #{vehicle.respond_to?(:age!) == true}"
  puts "\tHas motor: #{vehicle.respond_to?(:has_motor) == true}"
  puts "\tTank size: #{vehicle.respond_to?(:tank_size) == true}"
  puts "\tRefuel: #{vehicle.respond_to?(:refuel) == true}"
  puts "\tNumber of gears: #{vehicle.respond_to?(:number_of_gears) == true}"
  puts "\tAge: #{vehicle.age}"
  puts "\n\n"
end