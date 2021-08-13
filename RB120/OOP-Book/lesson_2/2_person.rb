# Exercise 1 from https://launchschool.com/lessons/dfff5f6b/assignments/209fc900

class Person
  attr_accessor :name

  def initialize(name)
    self.name = name
  end
end

bob = Person.new('bob')
bob.name                  # => 'bob'
bob.name = 'Robert'
bob.name                  # => 'Robert'
