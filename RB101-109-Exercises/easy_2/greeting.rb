# RB101-109 Small Problems
# Easy 2, Question 5 - Greeting a user
# https://launchschool.com/exercises/1af9d2f7
#
# Write a program that will ask for user's name. The program will then 
# greet the user. If the user writes "name!" then the computer yells 
# back to the user.

def user_screamed? (name)
  name [-1] == '!'
end

print "What is your name? "
name = gets.chomp

if user_screamed? (name)
  # .chop needed to remove exclaimation mark from name
  puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

