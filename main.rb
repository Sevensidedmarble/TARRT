require 'gosu'

$LOAD_PATH.unshift File.dirname(__FILE__) + '/lib'

require 'app'

# begin the fun
App.new.show
