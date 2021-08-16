# RB120 OO Programming - Easy 1 Exercises
# Exercise 6 - Flight Data
# https://launchschool.com/exercises/39281260
#
# Consider the following class definition ... There is nothing technically 
# incorrect about this class, but the definition may lead to problems in 
# the future. How can this class be fixed to be resistant to future problems?

class Flight
  attr_accessor :database_handle  # <<<< not a good idea, implementation detail

  def initialize(flight_number)
    @database_handle = Database.init
    @flight_number = flight_number
  end
end

