require File.dirname(__FILE__) + "/../spec_helper"

describe "Ball" do
  before :each do
    #@ball = Ball.new(Point.at(20, 20), Vector.new(0, 1))
  end

  it "should have speed" do
    pending
    ball = Ball.new(Point.at(20, 20))

    ball.speed.should == 10
  end
end
