SECRET = "Petunia+24@"

loop do
  puts ">> Please enter your password:"
  input = gets.chomp
  break if input == SECRET
  puts ">> Invalid password!"
end

puts "Welcome!"
