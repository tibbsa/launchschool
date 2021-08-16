# OO Basics, Classes and Objects 2 
# Exercise 5 - Counting Cats
# https://launchschool.com/exercises/40a2aede
#
# Using the following code, create a class named Cat that tracks the
# number of times a new Cat object is instantiated. The total number 
# of Cat instances should be printed when ::total is invoked.


class Cat
  @@num_cats = 0

  def initialize
    @@num_cats += 1
  end

  def self.total
    puts "There are #{@@num_cats} cats."
  end
end

kitty1 = Cat.new
kitty2 = Cat.new

Cat.total


