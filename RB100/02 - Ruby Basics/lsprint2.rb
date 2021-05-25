num = nil

loop do
  user_response = nil

  loop do
    puts "How many output lines do you want? Enter a number >= 3 (Q to quit):"
    user_response = gets.chomp.downcase
    break if user_response == 'q' 
    
    num = user_response.to_i
    break unless num < 3

    puts "That's not enough lines."
  end

  break if user_response == 'q'

  num.times { puts "Launch School is the best!" }
end

