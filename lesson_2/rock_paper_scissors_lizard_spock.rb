VALID_CHOICES = %w(rock paper scissors lizard spock)

WINNING_CHOICES = {
  'rock' =>     ['scissors', 'lizard'],
  'scissors' => ['paper', 'lizard'],
  'paper' =>    ['rock', 'spock'],
  'spock' =>    ['rock', 'scissors'],
  'lizard' =>   ['paper', 'spock']
}

WINNING_SCORE = 5

def clear_screen
  system('clear') || system('cls')
end

def line_break
  puts("===============================")
end

def load_delay_short
  sleep(0.5)
end

def load_delay_long
  sleep(1.5)
end

def display_welcome_message
  puts "Welcome to Rock Paper Scissors Lizard Spock! First to #{WINNING_SCORE} wins."
end

def display_goodbye_message
  puts "Thank you for playing, goodbye!"
end

def print_loading_next_round
  puts "Loading next round..."
end

def print_closing_game
  puts "Closing down game..."
end

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  WINNING_CHOICES[first].include?(second)
end

# def play_again?
#   answer = ''
#   loop do
#     answer = gets.chomp.downcase
#     if answer = 'y'
#       return true
#     elsif answer = 'n'
#       return false
#     else
#       prompt('Invalid choice. Do you want to play again? (y/n)')
#     end
#   end
# end

player_score = 0
computer_score = 0
round_number = 1

line_break
display_welcome_message
line_break
prompt("What's your name?")
player_name = gets.chomp.to_s

loop do
  break unless player_name.empty?
  prompt("I'm sorry, I didn't quite get that. Please enter your name.")
  player_name = gets.chomp.to_s
end

prompt("Welcome to the game #{player_name}!")

loop do
  player_choice = ''
  loop do
    prompt("Round #{round_number}. Fight!")
    round_number += 1
    prompt("Choose one: rock (r), paper (p), scissors (s), lizard (l) or \
spock (sp).")
    player_choice = gets.downcase.chomp

    loop do
      case player_choice
      when 'r'
        player_choice = 'rock'
      when 'p'
        player_choice = 'paper'
      when 's'
        player_choice = 'scissors'
      when 'l'
        player_choice = 'lizard'
      when 'sp'
        player_choice = 'spock'
      end

      break if VALID_CHOICES.include?(player_choice)

      prompt("That's not a valid choice. Choose one: rock (r), paper (p), \
scissors (s), lizard (l) or spock (sp).")
      player_choice = gets.downcase.chomp
    end

    computer_choice = VALID_CHOICES.sample
    line_break
    prompt("You chose #{player_choice.upcase}; the computer chose \
#{computer_choice.upcase}")
    line_break

    # compare choices to see who wins

    if win?(player_choice, computer_choice)
      player_score += 1
      prompt("You win the round! The score is: #{player_name} #{player_score} \
- #{computer_score} Computer")
    elsif win?(computer_choice, player_choice)
      computer_score += 1
      prompt("Computer wins the round! The score is: #{player_name} \
#{player_score} - #{computer_score} Computer")
    else
      prompt("It's a tie!")
    end
    line_break

    # check to see if there is a winner

    if player_score == WINNING_SCORE
      prompt("You win the match #{player_score} - #{computer_score}!")
      line_break
      break
    elsif computer_score == WINNING_SCORE
      prompt("Computer wins the match #{computer_score} - #{player_score}!")
      line_break
      break
    end

    print_loading_next_round
    line_break
    load_delay_short
  end

  prompt("Do you want to play again? (y/n)")
  player_score = 0
  computer_score = 0
  round_number = 1
  answer = gets.chomp

  loop do
    break if answer.downcase == 'y' || answer.downcase == 'n'
    prompt('Please enter a valid choice (y/n)')
    answer = gets.chomp
  end

  break unless answer.downcase == 'y'
  clear_screen
  prompt("NEW GAME!")
end

line_break
print_closing_game
line_break
load_delay_long
clear_screen
display_goodbye_message
