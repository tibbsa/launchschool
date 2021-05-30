# RB101-109 Small Problems
# Easy 2, Question 6 - Odd numbers
# https://launchschool.com/exercises/e7a26cab
#
# Print all odd numbers from 1 to 99, inclusive, to the console, 
# with each number on a separate line.

puts "--- Method 1 ---"
(1..99).each { |n| puts n if n.odd? }

# LS solution:
puts "--- Method 2 ---"
value = 1
while value <= 99
  puts value
  value += 2
end

# Further options:
# Repeat this exercise with a technique different from the one you just used, 
# and different from the solution shown above. You may want to explore the 
# use Integer#upto or Array#select methods, or maybe use Integer#odd?

puts "--- Method 3 ---"
1.upto (99) { |n| puts n if n.odd? }

##
puts "--- Method 4 ---"
puts (1..99).select { |n| n.odd? }
