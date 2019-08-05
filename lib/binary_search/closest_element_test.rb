require_relative "../../test_helper"
require_relative "closest_element"

describe ClosestElement do
  describe "edge cases" do
    it "should return -1 given an empty array" do
      actual = ClosestElement.run([], target: 0)
      expect(actual).must_equal(-1)
    end
  end

  describe "base cases" do
    it "should work when single element == target" do
      actual = ClosestElement.run([0], target: 0)
      expect(actual).must_equal 0
    end

    it "should return 0 when single element != target" do
      actual = ClosestElement.run([100], target: 0)
      expect(actual).must_equal 0
    end
  end

  describe "regular cases" do
    it "should find exact element index" do
      actual = ClosestElement.run([1, 2, 3, 4, 5], target: 3)
      expect(actual).must_equal 2
    end

    it "should find closest element index" do
      actual = ClosestElement.run([1, 2, 3, 6, 7, 8, 9], target: 5)
      expect(actual).must_equal 3
    end

    it "should find closest element at front of array" do
      actual = ClosestElement.run([1, 4, 5, 6, 7], target: 2)
      expect(actual).must_equal 0
    end

    it "should find closest element at end of array" do
      actual = ClosestElement.run([4, 5, 6, 9, 10, 100], target: 80)
      expect(actual).must_equal 5
    end
  end
end
