require 'player'
require 'game'
require 'ostruct'

module App
  @@config = OpenStruct.new

  class << self
    def init
      self.game = Game.new
      self.fonts = {}
      fonts[:alagard] = Gosu::Font.new(game.window, 'gfx/fonts/alagard.ttf', 16)
      fonts[:romulus] = Gosu::Font.new(game.window, 'gfx/fonts/romulus.ttf', 16)
    end

    def begin!
      init if self.game.nil?
      game.begin!
    end

    def draw_text(x, y, text, font = :romulus, color = 0xff_DBD9D6)
      fonts[font].draw(text, x, y, 3, 1, 1, color)
    end

    # Allow App to work like an OpenStruct, but with method definitions
    def method_missing(method_name, *args, &block)
      if method_name.to_s.end_with?('=')
        @@config.send(method_name, *args)
      else
        @@config.send(method_name) rescue super
      end
    end
  end
end
