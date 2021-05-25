def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

num_a = nil
num_b = nil

loop do
  puts ">> Please enter a positive or negative integer:"
  num_a = gets.chomp

  puts ">> Please enter a positive or negative integer:"
  num_b = gets.chomp

  if !valid_number?(num_a) || !valid_number?(num_b) then
    puts ">> Invalid input. Only non-zero integers are allowed."
    next
  end

  num_a = num_a.to_i
  num_b = num_b.to_i

  break if (num_a < 0 && num_b > 0) || (num_a > 0 && num_b < 0)

  puts ">> Sorry. One integer must be positive, one must be negative."
  puts ">> Please start over."
end

puts "#{num_a} + #{num_b} = #{num_a + num_b}"
