class Player
  def initialize
    @x = 1
    @y = 1
    @char = '@'
    @health = 100
  end

  def update
  end

  def draw
    App.draw_text(@x, @y, @char)
    #Gosu::Color.BLACK
  end

  def warp(x, y)
    @x, @y = x, y
  end
end
