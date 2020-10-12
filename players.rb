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


