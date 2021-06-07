# RB101-109 Small Problems
# Easy 6, Question 10 - Right Triangles
# https://launchschool.com/exercises/d165e3c4
#
# Write a method that takes a positive integer, n, as an argument, 
# and displays a right triangle whose sides each have n stars. 
# The hypotenuse of the triangle (the diagonal side in the images below) 
# should have one end at the lower-left of the triangle, and the 
# other end at the upper-right.
#

def triangle(side_len)
  star_count = 1
  while star_count <= side_len do
    puts "#{' ' * (side_len - star_count)}#{'*' * star_count}"
    star_count += 1
  end
end


triangle(5)

#     *
#    **
#   ***
#  ****
# *****

triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********