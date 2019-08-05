require_relative "../../test_helper"
require_relative "sliding_window"

describe SlidingWindow do
  describe "edge cases" do
    it "should return nil for empty array" do
      expect(SlidingWindow.run([], target: 1)).must_be_nil
    end

    it "should return nil for nil inputs" do
      expect(SlidingWindow.run(nil, target: 1)).must_be_nil
    end
  end

  describe "base cases" do
    it "should return nil for single elements > target" do
      expect(SlidingWindow.run([5], target: 1)).must_be_nil
    end

    it "should return [0, 0] for single element == target" do
      expected = [0, 0]
      actual = SlidingWindow.run([5], target: 5)
      expect(actual).must_equal expected
    end
  end

  describe "regular cases" do
    it "should work for array with multiple elements" do
      arr = [13, 1, 4, 5, 3, 5, 1, 2, 4]
      expected = [2, 4]
      actual = SlidingWindow.run(arr, target: 12)
      expect(actual).must_equal expected
    end
  end
end
