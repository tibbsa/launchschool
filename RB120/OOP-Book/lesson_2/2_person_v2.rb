# Exercise 1 from https://launchschool.com/lessons/dfff5f6b/assignments/209fc900

class Person
  attr_accessor :first_name, :last_name

  def initialize(name)
    self.first_name = name
    self.last_name = ''
  end

  def name()
    self.last_name.empty? ? self.first_name : "#{self.first_name} #{self.last_name}"
  end
end

bob = Person.new('Robert')
bob.name                  # => 'Robert'
bob.first_name            # => 'Robert'
bob.last_name             # => ''
bob.last_name = 'Smith'
bob.name                  # => 'Robert Smith'