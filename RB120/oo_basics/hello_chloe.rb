# OO Basics, Classes and Objects 2 
# Exercise 2 - Hello, Chloe
# https://launchschool.com/exercises/f00e08d5

class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename(new_name)
    self.name = new_name
  end
end

kitty = Cat.new('Sophie')
puts kitty.name
kitty.rename('Chloe')
puts kitty.name