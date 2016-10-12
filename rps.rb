# Rock, Paper, Scissors
choices = ['rock', 'paper', 'scissors']
win = 0
lose = 0
tie = 0

while true

  puts 'Enter your move'
  move = gets.chomp.downcase
  computer_move = choices.sample

  if move == 'quit'
    break
  end

  if move == computer_move
    puts 'Your opponent played ' + computer_move
    result = 'tie'

  elsif move == 'rock'
    puts 'Your opponent played ' + computer_move
    if computer_move == 'paper'
      result = 'lose'
    else
      result = 'win'
    end

  elsif move == 'paper'
    puts 'Your opponent played ' + computer_move
    if computer_move == 'rock'
      result = 'win'
    else
      result = 'lose'
    end

  elsif move == 'scissors'
    puts 'Your opponent played ' + computer_move
    if computer_move =='rock'
      result = 'lose'
    else
      result = 'win'
    end

  else
    puts 'That does\'t seem to be a valid move'
    result = 'invalid'
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
