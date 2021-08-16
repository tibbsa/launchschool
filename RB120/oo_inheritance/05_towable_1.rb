# OO Basics Exercises - Inheritance
# Problem 5 - Towable I
# https://launchschool.com/exercises/f93d4bfd
#
# Using the following code, create a Towable module that contains a 
# method named tow that prints I can tow a trailer! when invoked. 
# Include the module in the Truck class.

module Towable
  def tow
    puts "I can tow a trailer!"
  end
end

class Truck
  include Towable
  
end

class Car
end

truck1 = Truck.new
truck1.tow