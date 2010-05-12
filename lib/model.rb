require "math"
PAD_VELOCITY = 10

class Pad
  attr_reader :point, :width, :height

  def initialize(x, y)
    @point = Point.at(x, y)
    @width, @height = 200, 40
  end

  def move_left
    @point.translate!(-PAD_VELOCITY, 0)
  end

  def move_right
    @point.translate!(PAD_VELOCITY, 0)
  end

end


class Ball
end
