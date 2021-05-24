# Modify the following code so that the loop stops if number is equal to or between 0 and 10.
loop do
  number = rand(100)
  puts number
  break if number.between?(0, 10)
end

puts "============================================"
# Modify the code below so that the user's input gets added to the numbers array.
# Stop the loop when the array contains 5 numbers.

numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers.push input
  break if numbers.size >= 5
end
puts numbers

# Given the array below, use loop to remove and print each name. Stop the loop once names doesn't contain any more elements.

names = ['Sally', 'Joe', 'Lisa', 'Henry']
loop do
  puts names.shift
  break if names.empty?
end

# Using next, modify the code below so that it only prints even numbers.
number = 0

until number == 10
  number += 1
  next if !number.even?
  puts number
end

# The following code increments number_a and number_b by either 0 or 1. loop is used so that the variables can be incremented more than once, however, break stops the loop after the first iteration. Use next to modify the code so that the loop iterates until either number_a or number_b equals 5. Print "5 was reached!" before breaking out of the loop.

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  puts "a:#{number_a}, b:#{number_b}"
  next unless number_a == 5 || number_b == 5
  break
end
