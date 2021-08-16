# OO Basics Exercises - Accessor Methods
# Problem 7 - Prefix the name
# https://launchschool.com/exercises/a04f07e7
#
# Using the following code, add the appropriate accessor methods so 
# that @name is returned with the added prefix 'Mr.'.
#

class Person
  attr_writer :name

  def name
    "Mr. " + @name
  end
end

person1 = Person.new
person1.name = 'James'
puts person1.name
