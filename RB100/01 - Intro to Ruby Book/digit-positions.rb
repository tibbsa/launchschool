# Use the modulo operator, division, or a combination of
# both to take a 4 digit number and find the digit in 
# the: 1) thousands place 2) hundreds place 3)
# tens place 4) ones place
#
# https://launchschool.com/books/ruby/read/basics

num = 4723

thousands = num / 1000
hundreds = (num % 1000) / 100
tens = (num % 100) / 10
ones = (num % 10)

puts "#{thousands} / #{hundreds} / #{tens} / #{ones}"

