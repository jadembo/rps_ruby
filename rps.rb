# Rock, Paper, Scissors
choices = ['rock', 'paper', 'scissors']
win = 0
lose = 0
tie = 0

puts 'Welcome to Rock, Paper, Scissors!'

while true

  puts 'Enter your move'
  input = gets.chomp.downcase

  if input == 'r' || input == '2' || input == 'rock'
    your_move = 'rock'

  elsif input == 'p' || input == '1' || input == 'paper'
    your_move = 'paper'

  elsif input == 's' || input == '3' || input == 'scissors'
    your_move = 'scissors'

  elsif input == 'q' || input == 'quit' || input == 'exit' || input == 'e'
    break

  else
    puts 'That does\'t seem to be a valid move'
    your_move = 'invalid'
  end

  computer_move = choices.sample

  if your_move != 'invalid'
    puts 'You played ' + your_move
    puts 'Your opponent played ' + computer_move
  end

  if your_move == computer_move
    result = 'tie'
  elsif your_move == 'rock'
    if computer_move == 'paper'
      result = 'lose'
    else
      result = 'win'
    end

  elsif your_move == 'paper'
    if computer_move == 'rock'
      result = 'win'
    else
      result = 'lose'
    end

  elsif your_move == 'scissors'
    if computer_move =='rock'
      result = 'lose'
    else
      result = 'win'
    end

  end

  if result == 'win'
    puts 'You win!'
    win = win + 1
  elsif result == 'lose'
    puts 'You lose!'
    lose = lose + 1
  elsif result == 'tie'
    puts 'You tie!'
    tie = tie + 1

  end

  result = nil

end

puts 'You won ' + win.to_s + ' games'
puts 'You lost ' + lose.to_s + ' games'
puts 'You tied ' + tie.to_s + ' games'
