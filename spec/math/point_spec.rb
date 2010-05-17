require File.dirname(__FILE__) + "/../spec_helper"

describe "Point" do

  it "should have a position when initialized" do
    point = Point.at(13, 36)
    point.y.should == 36
    point.x.should == 13
  end

  describe "(translation)" do
    before :each do
      @point = Point.at(0, 0)
    end

    it "should translate relative to current coordinates" do
      point = Point.at(10, -53)
      point.translate!(-20, 12)

      verify(point, -10, -41)
    end

    [{:x => 0,  :y => 0},
     {:x => 12, :y => 20},
     {:x => -5, :y => -30}].each do |setup|

      it "should translate (#{setup[:x]}, #{setup[:y]}) and return a new adjusted point" do
        adjusted_point = @point.translate(setup[:x], setup[:y])    

        verify(adjusted_point, setup[:x], setup[:y])
        verify(@point, 0, 0)
      end
 
      it "should translate! (#{setup[:x]}, #{setup[:y]}) and modify the point" do
        @point.translate!(setup[:x], setup[:y])

        verify(@point, setup[:x], setup[:y])
      end
      
      it "should vector translate (#{setup[:x]}, #{setup[:y]}) and return a new adjusted point" do
        adjusted_point = @point.vector_translate(Vector.new(setup[:x], setup[:y]))

        verify(adjusted_point, setup[:x], setup[:y])
        verify(@point, 0, 0)
      end
 
      it "should vector translate! (#{setup[:x]}, #{setup[:y]}) and modify the point" do
        @point.vector_translate!(Vector.new(setup[:x], setup[:y]))

        verify(@point, setup[:x], setup[:y])
      end

    end

    def verify(point, expected_x, expected_y)
      point.x.should == expected_x
      point.y.should == expected_y
    end
  end
end

