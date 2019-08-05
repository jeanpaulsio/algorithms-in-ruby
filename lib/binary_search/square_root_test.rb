require_relative "../../test_helper"
require_relative "square_root"

describe SquareRoot do
  describe "base cases" do
    it "should calculate square roots" do
      1.upto(20) do |i|
        expect(SquareRoot.run(i)).must_equal Math.sqrt(i).floor
      end
    end
  end
end
