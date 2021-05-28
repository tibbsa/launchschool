# rock, paper, scisors

VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock'       && second == 'scissors') ||
    (first == 'paper'    && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
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

loop do
  player_choice = nil
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    player_choice = gets.chomp.downcase

    break if VALID_CHOICES.include?(player_choice)

    prompt("That's not a valid player_choice!")
  end

  computer_choice = ['rock', 'paper', 'scissors'].sample

  prompt("You chose #{player_choice}; Computer chose #{computer_choice}")

  display_results(player_choice, computer_choice)

  prompt("Do you want to play again?")
  answer = gets.chomp()
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
