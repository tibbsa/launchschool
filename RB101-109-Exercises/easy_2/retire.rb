# RB101-109 Small Problems
# Easy 2, Question 4 - When will I retire?
# https://launchschool.com/exercises/d28a76d4
#
# Build a program that displays when the user will retire and 
# how many years she has to work till retirement.
#

print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

year = Time.now.year

years_remaining = retirement_age - age

puts "It's #{year}. You will retire in #{year + years_remaining}."
puts "You have only #{years_remaining} years of work to go!"
