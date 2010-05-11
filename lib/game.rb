require "rubygems"
require "gosu"

class GameWindow < Gosu::Window
  def initialize
    super(400, 640, false)
    self.caption = "Alleyway"
    @pad = Pad.new(100, 500)
  end

  def update
  end

  def draw
    draw_quad(@pad.x, @pad.y, Gosu::white,
              @pad.x + @pad.width, @pad.y, Gosu::white,
              @pad.x + @pad.width, @pad.y + @pad.height, Gosu::white,
              @pad.x, @pad.y + @pad.height, Gosu::white)
  end
end

