# Write a program that asks the user for their age in years, 
# and then converts that age to months.

puts "Enter your age (in years):"
age = gets.chomp.to_f

age_months = age * 12.0
puts "That is #{age_months} months old!"

