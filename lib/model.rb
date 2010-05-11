class Pad
  attr_reader :x, :y, :width, :height

  def initialize(x, y)
    @x, @y = x, y
    @width, @height = 200, 40
  end

end
