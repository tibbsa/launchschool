# RB101-109 Small Problems
# Medium Problems 2, Question 5 - Triangle Sides
# https://launchschool.com/exercises/7fe5eaf8
#
# A triangle is classified as follows:
# 
# - equilateral All 3 sides are of equal length
# - isosceles 2 sides are of equal length, while the 3rd is different
# - scalene All 3 sides are of different length
#
# To be a valid triangle, the sum of the lengths of the two shortest sides 
# must be greater than the length of the longest side, and all sides must 
# have lengths greater than 0: if either of these conditions is not 
# satisfied, the triangle is invalid.
#
# Write a method that takes the lengths of the 3 sides of a triangle as 
# arguments, and returns a symbol :equilateral, :isosceles, :scalene, 
# or :invalid depending on whether the triangle is equilateral, 
# isosceles, scalene, or invalid.

def triangle(a, b, c)
  sides = [a, b, c]
  
  return :invalid     if sides.include?(0) || sides.max >= sides.min(2).sum
  return :equilateral if sides.max == sides.min
  return :isosceles   if sides.tally.value?(2)
         :scalene
end


p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid