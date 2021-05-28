# https://launchschool.com/lessons/263069da/assignments/86725689
# Lesson 3, Easy 2 Problems
# Question 1
#
# In this hash of people and their age,
#   ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# see if "Spot" is present.
#
# Bonus: What are two other hash methods that would work just as well 
#        for this solution?


ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.include? ("Spot")
p ages.has_key? ("Spot")
p ages.member? ("Spot")

# note: per Ruby docs, these are functionally equivalent
#       "Methods has_key?, key?, and member? are aliases for #include?."
