# OO Basics Exercises - Inheritance
# Problem 1 - Inherited Year
# https://launchschool.com/exercises/25e1ccaf
#
# Using the following code, create two classes - Truck and Car - that 
# both inherit from Vehicle.
#
# truck1 = Truck.new(1994)
# puts truck1.year
#
# car1 = Car.new(2006)
# puts car1.year
#
# Expected output:
# 1994
# 2006

class Vehicle
  attr_reader :year

  def initialize(year)
    @year = year
  end
end

class Car < Vehicle
end

class Truck < Vehicle
end

truck1 = Truck.new(1994)
puts truck1.year

car1 = Car.new(2006)
puts car1.year
