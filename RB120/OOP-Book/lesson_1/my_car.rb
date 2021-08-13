# https://launchschool.com/books/oo_ruby/read/classes_and_objects_part1#exercises

class MyCar
  attr_accessor :color
  attr_reader :model
  attr_reader :year
  attr_reader :speed

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @speed = 0

    puts "** Your #{self.color} #{self.year} #{self.model} is ready to go!"
  end

  def self.gas_mileage(gallons_consumed, distance_travelled)
    mileage = distance_travelled / gallons_consumed
    puts "** Calculated gas mileage is #{mileage} mpg"
  end

  def accelerate(increment = 1)
    @speed += increment
    puts ">> Pushing the gas to speed up by #{increment} km/h ..."
  end

  def current_speed()
    puts "-- Current speed is #{self.speed} km/h"
  end

  def brake(decrement = 1)
    @speed -= decrement
    puts "<< Braking to slow down by #{decrement} km/h ..."
  end
  
  def spray_paint(new_color)
    puts "** Repainting your #{self.color} car #{new_color}!"
    self.color = new_color
  end

  def shut_off()
    @speed = 0
    puts "** Stopped!"
  end

  def to_s()
    "#{self.color.capitalize} #{self.year} #{self.model} travelling at #{self.speed} km/h"
  end

end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.accelerate(20)
lumina.current_speed
lumina.accelerate(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_off
lumina.current_speed

puts "Car color: #{lumina.color}"
lumina.spray_paint('black')
puts "Car color: #{lumina.color}"
puts "Car year: #{lumina.year}"

MyCar.gas_mileage(13, 351)

puts lumina
