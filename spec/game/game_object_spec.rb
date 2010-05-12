require File.dirname(__FILE__) + "/../spec_helper"

describe "Game Object" do
  
  before :each do
    @object = GameObject.new(Point.at(200, 532), 200, 40)
  end

  it "should have position and dimensions" do
    # Bit of a lame test.
    @object.position.x.should == 200
    @object.position.y.should == 532
    @object.width.should == 200
    @object.height.should == 40
  end


end

