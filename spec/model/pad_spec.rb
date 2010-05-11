require File.dirname(__FILE__) + "/../spec_helper"

describe "Pad" do

  it "should have position and dimensions" do
    # Bit of a lame test.
    pad = Pad.new(201, 532)

    pad.x.should == 201
    pad.y.should == 532
    pad.width.should == 200
    pad.height.should == 40
  end
        
end
