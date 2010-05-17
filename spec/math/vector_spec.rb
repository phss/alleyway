require File.dirname(__FILE__) + "/../spec_helper"

describe "Vector" do

  describe "(construction)" do
    it "should construct from components" do
      vector = Vector.from_components(13, 20)

      verify(vector, 13, 20)
    end

    it "should construct from angle and magnitude" do
      vector = Vector.from_angle(2*Math::PI/3, 10)

      verify(vector, -5.0, 8.66)
    end
  end

  describe "(magnitude)" do
    [{:x =>  4, :y =>  3, :expected => 5},
     {:x => -4, :y => -3, :expected => 5},
     {:x =>  4, :y => -3, :expected => 5},
     {:x => -4, :y =>  3, :expected => 5},
     {:x =>  3, :y =>  4, :expected => 5},
     {:x =>  0, :y =>  0, :expected => 0},
     {:x =>  1, :y =>  0, :expected => 1},
     {:x =>  0, :y =>  1, :expected => 1}
    ].each do |setup| 
      it "vector (#{setup[:x]}, #{setup[:y]}) should have magnitude of #{setup[:expected]}" do
        vector = Vector.new(setup[:x], setup[:y])

        vector.magnitude.should == setup[:expected]
      end
    end
  end

  describe "(scalar)" do
    it "should scale vector into a new object" do
      vector = Vector.from_components(3, -4)

      new_vector = vector.scale(2)

      verify(new_vector, 6, -8)
      verify(vector, 3, -4)
    end
    
    it "should scale! a vector by modifying the reference" do
      vector = Vector.from_components(-1.5, 18)

      vector.scale!(3)

      verify(vector, -4.5, 54)
    end
  end

  def verify(vector, expected_x, expected_y) 
    vector.x_component.should be_close(expected_x, 0.001)
    vector.y_component.should be_close(expected_y, 0.001)
  end
end

