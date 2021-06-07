# RB101-109 Small Problems
# Easy 8, Question 7 - Double Char, Part 1
# https://launchschool.com/exercises/665638e3
#
# Write a method that takes a string, and returns a new 
# string in which every character is doubled.

def repeater(str)
  str.gsub(/(.)/, '\1\1')
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''