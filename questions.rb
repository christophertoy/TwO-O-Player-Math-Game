class Questions

  def initialize ()
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
    puts "What does #{@num1} plus #{@num2} equal?"
    puts "Answer is #{@answer}"
  end
end

Questions.new()
