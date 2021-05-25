def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
denominator = nil

loop do
  puts ">> Please enter the numerator:"
  numerator = gets.chomp
  if !valid_number?(numerator) then
    puts ">> Invalid input. Only integers are allowed."
    next
  end
  numerator = numerator.to_i
  break
end

loop do
  puts ">> Please enter the denominator:"
  denominator = gets.chomp
  if !valid_number?(denominator) then
    puts ">> Invalid input. Only integers are allowed."
    next
  end
  denominator = denominator.to_i

  if denominator == 0 then
    puts ">> Invalid input. A denominator of 0 is not allowed."
    next
  end

  break
end

puts "#{numerator} / #{denominator} is #{numerator / denominator}"
