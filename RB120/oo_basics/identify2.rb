# OO Basics, Classes and Objects 2 
# Exercise 7 - Identify Yourself (Part 2)
# https://launchschool.com/exercises/e7ca751c
#
# Update the following code so that it prints I'm Sophie! when it 
# invokes puts kitty.
#
class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    "I'm #{name}"
  end
end

kitty = Cat.new('Sophie')
puts kitty
