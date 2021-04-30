class Vehicle
  attr_accessor :speed, :direction
  def initialize(*)
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  attr_accessor :make, :model
  def initialize(options_hash)
    super
    @make = options_hash[:make]
    @model = options_hash[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  attr_accessor :weight, :color
  def initialize(options_hash)
    super
    @weight = options_hash[:weight]
    @color = options_hash[:color]
  end
  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new(make: "Ford", model: "Escape")
bike = Bike.new(weight: 18, color: "Red")
# car.honk_horn
# bike.ring_bell
puts car.model
puts car.speed
car.accelerate
puts car.speed
puts bike.weight