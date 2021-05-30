# RB101-109 Small Problems
# Easy 2, Question 8 - Sum or Product of Consecutive Integers
# https://launchschool.com/exercises/b720efd9
#
# Write a program that asks the user to enter an integer greater than 0, 
# then asks if the user wants to determine the sum or product of all 
# numbers between 1 and the entered integer.

puts "Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp
operator = (operation == 's') ? :sum : :product

operator_funcs = { :sum => :+, :product => :* }
result = (1..number).reduce(operator_funcs[operator])

puts "The #{operator.to_s} of the integers between 1 and #{number} is #{result}"
