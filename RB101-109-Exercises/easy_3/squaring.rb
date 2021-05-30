# RB101-109 Small Problems
# Easy 3, Question 5 - Squaring an argument
# https://launchschool.com/exercises/d24fe972
#
# Using the multiply method from the "Multiplying Two Numbers" problem, 
# write a method that computes the square of its argument (the square is 
# the result of multiplying a number by itself).

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

# Further Exploration:
# What if we wanted to generalize this method to a "power to the n" type 
# method: cubed, to the 4th power, to the 5th, etc. How would we go 
# about doing so while still using the multiply method?
def power(num, exponent)
  result = num
  (2..exponent).each { result = multiply(result, num) }
  result
end

puts square(5) == 25
puts square(-8) == 64

puts power(2,2) == 4
puts power(7,4) == 2401
puts power(2,16) == 65536
puts power(16,5) == 1048576

