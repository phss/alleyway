require File.dirname(__FILE__) + "/../spec_helper"

describe "Vector" do

  it "should have magnitude" do
    vector = Vector.new(4, 3)

    vector.magnitude.should == 5
  end

end

