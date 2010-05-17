require File.dirname(__FILE__) + "/../spec_helper"

describe "Ball" do
  before :each do
    #@ball = Ball.new(Point.at(20, 20), Vector.new(0, 1))
  end

  it "should have speed" do
    ball = Ball.new(Point.at(20, 20))

    ball.speed.should == 10
  end

  it "should move based on its velocity" do
    ball = Ball.new(Point.at(0, 0))

    ball.move

    # TODO: Create a equals for point?
    ball.position.x.should == 6
    ball.position.y.should == 8
  end
end
