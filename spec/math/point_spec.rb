require File.dirname(__FILE__) + "/../spec_helper"

describe "Point" do

  it "should have a position when initialized" do
    point = Point.at(13, 36)
    point.y.should == 36
    point.x.should == 13
  end

  describe "(translation)" do
    [{:x => 0,  :y => 0},
     {:x => 12, :y => 20},
     {:x => -5, :y => -30}].each do |setup|

      it "should translate (#{setup[:x]}, #{setup[:y]}) and return a new adjusted point" do
        point = Point.at(0, 0)
        adjusted_point = point.translate(setup[:x], setup[:y])    

        adjusted_point.x.should == setup[:x]
        adjusted_point.y.should == setup[:y]
        point.x.should == 0
        point.y.should == 0
      end
 
      it "should translate! (#{setup[:x]}, #{setup[:y]}) and modify the point" do
        point = Point.at(0, 0)
        point.translate!(setup[:x], setup[:y])

        point.x.should == setup[:x]
        point.y.should == setup[:y]
      end

    end
  end
end

