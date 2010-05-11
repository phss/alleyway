PAD_VELOCITY = 10

class Pad
  attr_reader :x, :y, :width, :height

  def initialize(x, y)
    @x, @y = x, y
    @width, @height = 200, 40
  end

  def move_left
    @x -= PAD_VELOCITY
  end

  def move_right
    @x += PAD_VELOCITY
  end

end
