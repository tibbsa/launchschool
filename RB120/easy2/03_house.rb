# RB120 OO Programming - Easy 2 Exercises
# Exercise 3 - House
# https://launchschool.com/exercises/7b242f41
#
# Assume you have the following code:
# and this output:
#   Home 1 is cheaper
#   Home 2 is more expensive
# Modify the House class so that the above program will work. 
# You are permitted to define only one new method in House.

class House
  include Comparable

  attr_reader :price

  def initialize(price)
    @price = price
  end

  def <=> (other_house)
    @price <=> other_house.price
  end
end

home1 = House.new(100_000)
home2 = House.new(150_000)
puts "Home 1 is cheaper" if home1 < home2
puts "Home 2 is more expensive" if home2 > home1