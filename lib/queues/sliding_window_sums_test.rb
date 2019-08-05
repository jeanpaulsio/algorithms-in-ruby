require_relative "../../test_helper"
require_relative "sliding_window_sums"

describe SlidingWindowSums do
  describe "regular cases" do
    it "should find sums when K = 2" do
      expected = [3, 6, 9, 12]
      actual = SlidingWindowSums.run(arr: [1, 2, 4, 5, 7], k: 2)
      expect(actual).must_equal expected
    end

    it "should find sums when K > 2" do
      expected = [7, 11, 16]
      actual = SlidingWindowSums.run(arr: [1, 2, 4, 5, 7], k: 3)
      expect(actual).must_equal expected
    end
  end
end
