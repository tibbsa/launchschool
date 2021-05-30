# RB101-109 Small Problems
# Easy 2, Question 2 - How big is the room?
# https://launchschool.com/exercises/7fc5d216
#
# Build a program that asks a user for the length and width of a 
# room in meters and then displays the area of the room in both 
# square meters and square feet.
# 
# Note: 1 square meter == 10.7639 square feet
#
# Do not worry about validating the input at this time.

def m2_to_ft2(n)
  n * 10.7639
end

puts "=> Enter the length of the room (in meters):"
l = gets.chomp.to_f

puts "=> Enter the width of the room (in meters):"
w = gets.chomp.to_f

## note: nothing was specified in the instructions regarding formatting the
## results, but the LS solution used round(2) to force it to two decimals.
size_m = (l*w).round(2)
size_ft = m2_to_ft2(size_m).round(2)

puts "The area of the room is #{size_m} square meters (#{size_ft} square feet)."

