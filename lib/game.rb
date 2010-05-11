require 'rubygems'
require 'gosu'

class GameWindow < Gosu::Window
  def initialize
   super(400, 640, false)
    self.caption = "Alleyway"
 end

  def update
  end

  def draw
    draw_line(20, 20, Gosu::white, 40, 60, Gosu::white);	  
  end
end

