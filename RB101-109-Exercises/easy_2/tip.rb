# RB101-109 Small Problems
# Easy 2, Question 3 - Tip calculator
# https://launchschool.com/exercises/90d719d7
#
# Create a simple tip calculator. The program should prompt for a bill 
# amount and a tip rate. The program must compute the tip and then 
# display both the tip and the total amount of the bill.
#

puts "=> What is the bill?"
bill_amount = gets.to_f

puts "=> What is the tip percentage?"
tip_rate = gets.to_f

tip_amount = (bill_amount * (tip_rate / 100)).round(2)
bill_total = (bill_amount + tip_amount).round(2)

puts "The tip is $#{format("%.2f", tip_amount)}"
puts "The total is $#{format("%.2f", bill_total)}"
