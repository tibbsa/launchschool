# rock, paper, scisors, spock, lizard

VALID_CHOICES = %w(rock paper scissors spock lizard)

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  case first
  when 'scissors' then (second == 'paper' || second == 'lizard')
  when 'paper' then (second == 'rock' || second == 'spock')
  when 'rock' then (second == 'lizard' || second == 'scissors')
  when 'lizard' then (second == 'spock' || second == 'paper')
  when 'spock' then (second == 'scissors' || second == 'rock')
  end
end

def display_results(player_choice, computer_choice)
  if win?(player_choice, computer_choice)
    prompt("You won, computer lost!")
  elsif win?(computer_choice, player_choice)
    prompt("Computer won, you lost!")
  else
    prompt("It was a tie!")
  end
end

# logic table validation
# VALID_CHOICES.each do |p1| 
#   VALID_CHOICES.each do |p2|
#     puts format("%-20s %-20s %s", p1, p2, win?(p1,p2).to_s)
#   end
# end


loop do
  player_choice = nil
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    player_choice = gets.chomp.downcase

    break if VALID_CHOICES.include?(player_choice)

    prompt("That's not a valid player_choice!")
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{player_choice}; Computer chose #{computer_choice}")

  display_results(player_choice, computer_choice)

  prompt("Do you want to play again?")
  answer = gets.chomp()
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
