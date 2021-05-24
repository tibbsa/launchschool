# Write a program that takes a number from the user between 0 and 100 and 
# reports back whether the number is between 0 and 50, 51 and 100, 
# or above 100.

# https://launchschool.com/books/ruby/read/flow_control

puts "Enter a number between 0 and 100"
num = gets.chomp.to_i

if num < 0
  puts "You can't enter a negative number!"
else
  case num
    when 0..50 then puts "0 <= n <= 50"
    when 51..100 then puts "51 <= n <= 100"
    else puts "> 100"
  end
end
