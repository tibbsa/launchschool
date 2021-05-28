# https://launchschool.com/lessons/263069da/assignments/e2593fe1
# Question 6
# Starting with the string:
#    famous_words = "seven years ago..."
# show two different ways to put the expected "Four score and " in front of it.

str = "seven years ago..."

str = str.prepend("Four score and ")
p str

str = "seven years ago..."
str = "Four score and " << str
p str
