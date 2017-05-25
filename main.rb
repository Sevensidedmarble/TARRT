# Require external gem dependencies
require 'gosu'

# Add the lib directory next to this file to the list of paths to load from
$LOAD_PATH.unshift File.dirname(__FILE__) + '/lib'

# Require top-level dependencies of the game
require 'app'

# begin the fun
App.new.show
