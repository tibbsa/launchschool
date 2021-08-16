# OO Basics, Classes and Objects 2 
# Exercise 4 - Generic Greeting Part 2
# https://launchschool.com/exercises/48a171b0
#
# Using the following code, add two methods: ::generic_greeting 
# and #personal_greeting. The first method should be a class method 
# and print a greeting that's generic to the class. The second method 
# should be an instance method and print a greeting that's custom to 
# the object.
#

class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.generic_greeting
    puts "I'm a cat."
  end

  def personal_greeting
    puts "I'm #{self.name}, the cat!"
  end
end

kitty = Cat.new('Sophie')

Cat.generic_greeting
kitty.personal_greeting