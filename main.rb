require "./players"
require "./questions"

p1 = Players.new("Player 1")
p2 = Players.new("Player 2")

def turn(player)
  question = Questions.new()
  puts "#{player.name}: #{question.ask}" 

  answer1 = gets.chomp.to_i

if answer1 == question.answer
  puts "YES! You are correct"
else
  puts "Seriously? No!"
  player.remove_life
end
end

loop do
puts "----- NEW TURN -----"
turn(p1)
if p1.game_over 
  puts "Player 2 wins with a score of #{p2.life}/3"
  break
end
puts "P1: #{p1.life}/3 vs P2: #{p2.life}/3" 
puts "----- NEW TURN -----"
turn(p2)
if p2.game_over
  puts "Player 1 wins with a score of #{p1.life}/3"
  break
end
puts "P1: #{p1.life}/3 vs P2: #{p2.life}/3" 
end

puts "----- GAME OVER -----"
puts "Good bye!"