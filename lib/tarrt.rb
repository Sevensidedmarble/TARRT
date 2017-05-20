# Require external gem dependencies
require 'gosu'

# Add the lib directory next to this file to the list of paths to load from
$LOAD_PATH.unshift File.dirname(__FILE__)

# Require top-level dependencies of the game
require 'app'

#
# TARRT
#
# Top-level game wrapper
#
module TARRT
  def self.init
    App.game = Game.new
    App.init
    App.game.begin!
  rescue StandardError => e
    puts 'Something went wrong: '
    puts e.class.name << ' : ' << e.message
  end
end

TARRT.init
