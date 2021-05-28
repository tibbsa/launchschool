# https://launchschool.com/lessons/263069da/assignments/e2593fe1
# Lesson 3, Medium Problems 1, Question 1
#
# Let's do some "ASCII Art" (a stone-age form of nerd artwork from back
# in the days before computers had video screens).
#
# For this practice problem, write a one-line program that creates 
# the following output 10 times, with the subsequent line indented 
# 1 space to the right:
#
# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!

10.times do |num|
  puts sprintf("%-*.*sThe Flintstones Rock!", num, num, " ")
end

# LS solution:
#   10.times { |number| puts (" " * number) + "The Flintstones Rock!" }
