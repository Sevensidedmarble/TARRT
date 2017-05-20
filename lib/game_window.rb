class GameWindow < Gosu::Window
  def initialize
    super 640, 480
    self.caption = 'TARRT: a Roguelike Toolkit'

    @background_image = Gosu::Image.new('gfx/other/forest.jpg', tileable: true)
  end

  def draw
    @background_image.draw(0, 0, 0)
  end
end
