require 'game_window'
require 'game_state'

class Game
  def initialize
    @score = 0
    @player = Player.new
    @window = GameWindow.new
  end

  def generate_map(size)
    map_array = []
  end

  def begin!
    @window.show
  end
end
