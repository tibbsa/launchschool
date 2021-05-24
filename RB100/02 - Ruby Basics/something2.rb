# Write a program that asks the user whether they want the program 
# to print "something", then print it if the user enters y. Otherwise,
# print nothing.

# Modify your program so it prints an error message for any inputs that
# aren't y or n, and then asks you to try again. Keep asking for a 
# response until you receive a valid y or n response. In addition, your
# program should allow both Y and N (uppercase) responses; case 
# sensitive input is generally a poor user interface choice. 
# Whenever possible, accept both uppercase and lowercase inputs.

loop do
  puts "Do you want me to print something (y/n)?"
  choice = gets.chomp.upcase
  
  # case is not like in C/C++ switch() -- does not fall through to next case. 
  # 'break' will therefore end the loop
  case choice
    when 'Y'
      puts "something"
      break

    when 'N'
      break

    else
      puts "Invalid input! Please enter y or n"
  end
end

### suggested code
choice = nil
loop do
  puts '>> Do you want me to print something? (y/n)'
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice)
  puts '>> Invalid input! Please enter y or n'
end
puts 'something' if choice == 'y'

