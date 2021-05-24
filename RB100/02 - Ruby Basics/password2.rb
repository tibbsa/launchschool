VALID_USER = "administrator"
VALID_PASS = "Petunia+24@"

loop do
  puts ">> Please enter user name:"
  user = gets.chomp

  puts ">> Please enter your password:"
  pass = gets.chomp

  break if user == VALID_USER && pass == VALID_PASS
  
  puts ">> Authorization failed!"
end

puts "Welcome!"

