require_relative "../../test_helper"
require_relative "dutch_national_flag"

describe DutchNationalFlag do
  describe "regular cases" do
    it "should sort the array properly" do
      expected = [3, 3, 2, 4, 4, 4, 4, 6, 8, 6, 5]
      actual = DutchNationalFlag.run([3, 5, 2, 6, 8, 4, 4, 6, 4, 4, 3], 5)
      expect(actual).must_equal expected
    end
  end
end
