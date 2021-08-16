# RB120 OO Programming - Easy 1 Exercises
# Exercise 8 - Rectangles and Squares
# https://launchschool.com/exercises/42f030c9
#
# Given the following class: ... Write a class called Square that 
# inherits from Rectangle, and is used like this:

class Rectangle
  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    @height * @width
  end
end

class Square < Rectangle
  def initialize(sidelength)
    super(sidelength, sidelength)
  end
end

square = Square.new(5)
puts "area of square = #{square.area}"
