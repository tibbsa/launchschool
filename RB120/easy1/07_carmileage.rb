# RB120 OO Programming - Easy 1 Exercises
# Exercise 7 - Buggy Code Car Mileage
# https://launchschool.com/exercises/252fb35b
#
# Fix the following code so it works properly:
#

class Car
  attr_accessor :mileage

  def initialize
    @mileage = 0
  end

  def increment_mileage(miles)
    @mileage = @mileage + miles
  end

  def print_mileage
    puts mileage
  end
end

car = Car.new
car.mileage = 5000
car.increment_mileage(678)
car.print_mileage  # should print 5678
