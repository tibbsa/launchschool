# RB120 OO Programming - Easy 1 Exercises
# Exercise 5 - Fix the Program - Person
# https://launchschool.com/exercises/5329e5b8
#
# Complete this program so that it produces the expected output:
#   John Doe
#   Jane Smith

class Person
  def initialize(first_name, last_name)
    self.first_name = first_name
    self.last_name = last_name
  end

  def first_name= (name)
    @first_name = name.capitalize
  end

  def last_name= (name)
    @last_name = name.capitalize
  end

  def to_s
    "#{@first_name} #{@last_name}"
  end
end

person = Person.new('john', 'doe')
puts person

person.first_name = 'jane'
person.last_name = 'smith'
puts person
