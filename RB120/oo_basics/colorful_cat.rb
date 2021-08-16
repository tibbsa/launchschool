# OO Basics, Classes and Objects 2 
# Exercise 6 - Colorful Cat
# https://launchschool.com/exercises/5835e7ee
#
# Using the following code, create a class named Cat that prints a 
# greeting when #greet is invoked. The greeting should include the 
# name and color of the cat. Use a constant to define the color.

class Cat
  CAT_COLOR = 'black'

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hi, I'm a #{CAT_COLOR} cat named #{@name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet

