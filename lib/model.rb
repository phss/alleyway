PAD_VELOCITY = 10

class Pad < GameObject

  def initialize(x, y)
    super(Point.at(x, y), 200, 40)
  end

  def move_left
    @position.translate!(-PAD_VELOCITY, 0)
  end

  def move_right
    @position.translate!(PAD_VELOCITY, 0)
  end

end


class Ball < GameObject

  def initialize(position)
    super(position, 10, 10)
    @velocity = Vector.new(6, 8)
  end

  def speed
    @velocity.magnitude
  end

  def move
    @position.vector_translate!(@velocity)
  end

end
