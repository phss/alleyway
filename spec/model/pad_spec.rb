require File.dirname(__FILE__) + "/../spec_helper"

describe "Pad" do

  before :each do
    @pad = Pad.new(200, 532)
  end

  it "should have position and dimensions" do
    # Bit of a lame test.
    @pad.x.should == 200
    @pad.y.should == 532
    @pad.width.should == 200
    @pad.height.should == 40
  end

  it "should move left and right, according to velocity" do
    @pad.move_left
    @pad.x.should == 190

    3.times { @pad.move_right }
    @pad.x.should == 220
  end
        
end
