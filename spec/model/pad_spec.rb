require File.dirname(__FILE__) + "/../spec_helper"

describe "Pad" do

  before :each do
    @pad = Pad.new(200, 532)
  end

  it "should move left and right, according to velocity" do
    @pad.move_left
    @pad.position.x.should == 190

    3.times { @pad.move_right }
    @pad.position.x.should == 220
  end
        
end
