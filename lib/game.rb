require "rubygems"
require "gosu"

class GameWindow < Gosu::Window
  def initialize
    super(400, 640, false)
    self.caption = "Alleyway"
    @pad = Pad.new(100, 500)
    @ball = Ball.new(Point.at(40, 40))
  end

  def update
  end

  def draw 
    draw_object(@pad)
    draw_object(@ball)
  end

  def draw_object(object)
    draw_quad(object.position.x, object.position.y, Gosu::white,
              object.position.x + object.width, object.position.y, Gosu::white,
              object.position.x + object.width, object.position.y + object.height, Gosu::white,
              object.position.x, object.position.y + object.height, Gosu::white)
  end

end

class GameObject
  attr_reader :position, :width, :height

  def initialize(position, width, height)
    @position = position
    @width = width
    @height = height
  end

end

