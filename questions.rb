class Questions

  def initialize ()
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
    @ask =  "What does #{@num1} plus #{@num2} equal?"
  end

  def question
    @question
  end

  def answer
    @answer
  end

  def ask
    @ask
  end


end
