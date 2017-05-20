class GameWindow < Gosu::Window
  def initialize(game)
    super 640, 480
    self.caption = 'TARRT: a Roguelike Toolkit'

    @background_image = Gosu::Image.new('gfx/other/forest.jpg', tileable: true)
    @game = game

    @player = Player.new
    @player.warp(320, 300)
  end

  def needs_cursor?
    true
  end

  def draw
    @background_image.draw(0, 0, 0)
    @player.draw

    width = App.fonts[:alagard].text_width('Start Game')
    App.draw_text((self.width / 2) - (width / 2),
                  (height / 2),
                  'Start Game',
                  :alagard)
  end

  def button_down(id)
    case id
    when Gosu::KbEscape
      close
    end
  end
end
