class Point
  attr_reader :x, :y

  def initialize(x, y)
    @x, @y = x, y
  end

  def self.at(x, y)
    self.new(x, y)
  end

  def translate(x, y)
    Point.at(@x, @y).translate!(x, y)
  end

  def translate!(x, y)
    @x += x
    @y += y
    self
  end
end

class Vector
  attr_reader :x_component, :y_component

  def initialize(x_component, y_component)
    @x_component, @y_component = x_component, y_component
  end

  def magnitude
    5
  end

end
