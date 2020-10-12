class Players
  
  def initialize(name)
    @name = name
    @life = 3
  end
  
  def remove_life
    @life -= 1
  end

  def life
    @life
  end

  def name
    @name
  end

  def game_over
    @life == 0
end
end


class Questions

  def initialize ()
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
    puts "What does #{@num1} plus #{@num2} equal?"
  end

  def question
    @question
  end

  def answer
    @answer
  end


end


p1 = Players.new("Player 1")
p2 = Players.new("Player 2")

# puts "----- NEW TURN -----"

def turn(player)
  
  puts "#{player.name}:" 
  question = Questions.new()

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