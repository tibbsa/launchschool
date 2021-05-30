# RB101-109 Small Problems
# Easy 3, Question 1 - Searching 101
# https://launchschool.com/exercises/f4f25695
#
# Write a program that solicits 6 numbers from the user, then 
# prints a message that describes whether or not the 6th number 
# appears amongst the first 5 numbers.

def get_number(identifier)
  print "==> Enter the #{identifier} number: "
  gets.chomp.to_i
end

numbers = []

['1st', '2nd', '3rd', '4th', '5th'].each do |id|
  numbers << get_number(id)
end

search_num = get_number('last')

if numbers.include? (search_num)
  puts "The number #{search_num} appears in #{numbers.inspect}"
else
  puts "The number #{search_num} does not appear in #{numbers.inspect}"
end



