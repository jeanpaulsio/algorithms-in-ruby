require_relative "../../test_helper"
require_relative "shortest_subarray_unsorted"

describe ShortestSubarrayUnsorted do
  describe "regular cases" do
    it "should find subarray towards the middle" do
      expected = [2, 4]
      actual = ShortestSubarrayUnsorted.run [1, 2, 4, 5, 3, 5, 6, 7, 9]
      expect(actual).must_equal expected
    end

    it "should work when subarray reaches end of array" do
      expected = [1, 8]
      actual = ShortestSubarrayUnsorted.run [1, 3, 5, 2, 10, 8, 7, 8, 9]
      expect(actual).must_equal expected
    end

    it "should returns nil for sorted arrays" do
      actual = ShortestSubarrayUnsorted.run [1, 2, 3, 4, 5]
      expect(actual).must_be_nil
    end

    it "should work for array of length 3" do
      expected = [0, 1]
      actual = ShortestSubarrayUnsorted.run [1, 0, 3]
      expect(actual).must_equal expected
    end
  end
end
