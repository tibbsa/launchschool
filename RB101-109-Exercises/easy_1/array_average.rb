# RB101-109 Small Problems
# Easy 1, Question 7 - Array Average
# https://launchschool.com/exercises/5b9a3e04
#
# Write a method that takes one argument, an array containing integers, 
# and returns the average of all numbers in the array. The array will 
# never be empty and the numbers will always be positive integers. Your
# result should also be an integer.
#

def average(arr)
  # simple solution: arr.sum / arr.length, but this is the algorithm
  # launch school solutions:
  #
  #  sum = numbers.reduce { |sum, number| sum + number }
  #  sum / numbers.count
  #
  # or more succinctly, 
  #
  #  sum = numbers.reduce(:+)
  #

  sum = 0
  arr.each do |num|
    sum += num
  end

  sum.to_f / arr.count
end

#
# Further exploration: Currently, the return value of average is an Integer. 
# When dividing numbers, sometimes the quotient isn't a whole number, 
# therefore, it might make more sense to return a Float. Can you change 
# the return value of average from an Integer to a Float?
#
# -> change sum / arr.count to sum.to_f / arr.count
#

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40