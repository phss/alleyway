require File.dirname(__FILE__) + "/../spec_helper"

describe "Point" do

  before :each do
    @point = Point.at(13, 36)
  end

  it "should have a position when initialized" do
    @point.x.should == 13
    @point.y.should == 36
  end

  it "should translate the point into a new adjusted point" do
    adjusted_point = @point.translate(-6, 13)    

    adjusted_point.x.should == 7
    adjusted_point.y.should == 49
    @point.x.should == 13
    @point.y.should == 36
  end

  it "should translate! the point" do
    @point.translate!(-6, 13)    

    @point.x.should == 7
    @point.y.should == 49
  end

end

