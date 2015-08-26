CHOICES = {'r' => 'Rock', 'p' => 'Paper', 's' => 'Scissors'}
puts "Play Rock Paper Scissors!"

def winning_message(winning_choice)
  case
  when winning_choice == 'p'
  puts "Paper wraps Rock!"
  when winning_choice == 'r'
  puts "Rock smashes Scissors!"
  when winning_choice == 's'
  puts "Scissors cuts Paper!"
  end
end

loop do
  begin
  puts "pick one: (p, r, s)"
  player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)
  
  computer_choice = CHOICES.keys.sample
  
  if player_choice == computer_choice
    puts "It's a tie!"
    
    elsif (player_choice == 'r' && computer_choice == 's') || (player_choice == 's' && computer_choice == 'p') || 
    (player_choice == 'p' && computer_choice == 'r')
    winning_message(player_choice)
    puts "You win!"
    
  else
    puts "Computer wins!"
    
  end
  
  puts "Play again? (Y/N)"
  if gets.chomp.downcase != 'y'
    break
  end
end

puts "Good bye!"