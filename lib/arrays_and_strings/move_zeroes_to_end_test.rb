require_relative "../../test_helper"
require_relative "move_zeroes_to_end"

describe MoveZeroesToEnd do
  describe "regular cases" do
    it "should move zeroes to the end" do
      expected = [1, 2, 4, 3, 5, 0, 0, 0]
      actual = MoveZeroesToEnd.run [1, 2, 0, 4, 3, 0, 5, 0]
      expect(actual).must_equal expected
    end
  end
end
