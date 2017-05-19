# main.rb

require 'gosu'

class Game
    def initialize
        @score = 0
    end

    def generate_map(size)
        map_array = []
    end
end

class App < Gosu::Window
    def initialize
        super 640, 480
        self.caption = "TARRT: a Roguelike Toolkit"
        # set the important parameters
        @G = Game.new() # G is the singleton that holds the instance of our Game object, containing all logic
        @background_image = Gosu::Image.new("gfx/other/forest.jpg", :tileable => true)        
        @last_milliseconds = 0 # required for delta time calculation
        @gothic_font = Gosu::Font.new(self, "gfx/fonts/alagard.ttf", 16)
    end

    # helper that simplifies some text drawing
    def draw_text(x, y, text, font, color)
        font.draw(text, x, y, 3, 1, 1, color)
    end

    def update_dt
        current_time = Gosu::milliseconds / 1000.0
        @dt = [current_time - @last_milliseconds, 0.25].min
        @last_milliseconds = current_time
    end
  
    def update
        self.update_dt
    end
  
    def draw
        @background_image.draw(0, 0, 0)
        width = @gothic_font.text_width("Start Game", scale_x = 1)
        draw_text((self.width/2) - (width/2), self.height/2, "Start Game", @gothic_font, 0xff_DBD9D6)
    end

    def button_down(id)
        case id
            when Gosu::KbEscape
                close
            end
        end
end

# begin the fun
App.new.show