# RB101-109 Small Problems
# Easy 2, Question 1 - How old is Teddy?
# https://launchschool.com/exercises/84376930
#
# Build a program that randomly generates and prints Teddy's age. 
# To get the age, you should generate a random number between 20 and 200.
#
# e.g. Teddy is 69 years old!

age = rand(20..200)
puts "Teddy is #{age} years old!"

# Further exploration
# Modify this program to ask for a name, and then print the age for 
# that person. For an extra challenge, use "Teddy" as the name if no 
# name is entered.

puts "=> Please enter a name:"
name = gets.chomp
name = "Teddy" if name.empty?

puts "#{name} is #{age} years old!"
