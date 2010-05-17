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

  def vector_translate(vector)
    translate(vector.x_component, vector.y_component)
  end

  def vector_translate!(vector)
    translate!(vector.x_component, vector.y_component)
  end
end

class Vector
  attr_reader :x_component, :y_component

  def initialize(x_component, y_component)
    @x_component, @y_component = x_component, y_component
  end

  def self.from_components(x, y)
    Vector.new(x, y)
  end

  def self.from_angle(radian, magnitude)
    Vector.from_components(Math.cos(radian), Math.sin(radian)).scale(magnitude)
  end

  def magnitude
    Math.hypot(@x_component, @y_component)
  end

  def scale(scalar)
    Vector.new(@x_component, @y_component).scale!(scalar)
  end

  def scale!(scalar)
    @x_component *= scalar
    @y_component *= scalar
    return self
  end

end
