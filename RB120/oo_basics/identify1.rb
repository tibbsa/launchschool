# OO Basics, Classes and Objects 2 
# Exercise 3 - Identify yourself (part 1)
# https://launchschool.com/exercises/09447cd6
#
# Using the following code, add a method named #identify that returns its calling object.

class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def identify
    self
  end
end

kitty = Cat.new('Sophie')
p kitty.identify
