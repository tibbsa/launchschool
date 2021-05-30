# RB101-109 Small Problems
# Easy 1, Question 1 - Repeat Yourself
# https://launchschool.com/exercises/a018e581
# 
# Write a method that takes two arguments, a string and a positive integer, 
# and prints the string as many times as the integer indicates.

def repeat(msg, count)
  count.times { puts msg }
end

repeat('Hello', 3)