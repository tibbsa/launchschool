# built up through the exercises from "OO Basics, Classes and Objects 1"
# https://launchschool.com/exercise_sets/c631a3b2

module Walkable
  def walk
    puts "Let's go for a walk!"
  end
end

class Cat
  include Walkable
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hi, I'm #{name}, the cat!"
  end
end


kitty = Cat.new('Sophie')
kitty.greet

kitty.name = 'Luna'
kitty.greet

kitty.walk
