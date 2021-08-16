# RB120 OO Programming - Easy 2 Exercises
# Exercise 4 - Reverse Engineering
# https://launchschool.com/exercises/7b713134
#
# Write a class that will display:
#
#   ABC
#   xyz
#
# when the following code is run:
#

class Transform
  def initialize(str)
    @str = str
  end

  def uppercase
    @str.upcase
  end

  def self.lowercase(str)
    str.downcase
  end
end

my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')
