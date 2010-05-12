require "math"
PAD_VELOCITY = 10

class Pad
  attr_reader :position, :width, :height

  def initialize(x, y)
    @position = Point.at(x, y)
    @width, @height = 200, 40
  end

  def move_left
    @position.translate!(-PAD_VELOCITY, 0)
  end

  def move_right
    @position.translate!(PAD_VELOCITY, 0)
  end

end


class Ball
end
