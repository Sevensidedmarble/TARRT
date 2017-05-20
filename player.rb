# player.rb

class Player
  def initialize
    @x = 1
    @y = 1
    @char = '@'
    @health = 100
  end

  def update
    # ...
  end

  def draw
    draw_text( @x, @y, @char, App.font01, 0xff_DBD9D6)
    #Gosu::Color.BLACK
  end
end
