require File.dirname(__FILE__) + "/../spec_helper"

describe "Vector" do

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
      vector = Vector.new(3, -4)

      new_vector = vector.scale(2)

      verify_vector(new_vector, 6, -8)
      verify_vector(vector, 3, -4)
    end
    
    it "should scale! a vector by modifying the reference" do
      vector = Vector.new(-1.5, 18)

      vector.scale!(3)

      verify_vector(vector, -4.5, 54)
    end

    def verify_vector(vector, expected_x, expected_y) 
      vector.x_component.should == expected_x
      vector.y_component.should == expected_y
    end
  end
end

