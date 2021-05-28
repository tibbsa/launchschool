# https://launchschool.com/lessons/263069da/assignments/86725689
# Lesson 3, Easy 2 Problems
# Question 8

# Shorten the following sentence:
#  advice = "Few things in life are as important as house training your pet dinosaur."
#
# Review the String#slice! documentation, and use that method to make the 
# return value "Few things in life are as important as ". But leave the 
# advice variable as "house training your pet dinosaur.".

advice = "Few things in life are as important as house training your pet dinosaur."

retval = advice.slice!(/^Few things in life are as important as /)
puts "Return value: #{retval}"
puts "Advice:       #{advice}"

# Launch School solution: 
#    advice.slice!(0, advice.index('house')) 

# As a bonus, what happens if you use the String#slice method instead?
# ==> Return value is the same, but is not deleted from 'advice'

