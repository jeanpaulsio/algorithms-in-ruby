require_relative "../../test_helper"
require_relative "sorted_squares"

describe SortedSquares do
  describe "corner cases" do
    it "should handle an empty array" do
      actual = SortedSquares.run([])
      expect(actual).must_be_nil
    end
  end

  describe "base cases" do
    it "works for an array with a single +ve element" do
      expected = [4]
      actual = SortedSquares.run([2])
      expect(actual).must_equal expected
    end

    it "works for an array with a single -ve element" do
      expected = [4]
      actual = SortedSquares.run([-2])
      expect(actual).must_equal expected
    end
  end

  describe "regular cases" do
    it "returns sorted squares of an array with only +ve elements" do
      expected = [1, 4, 9, 16, 25]
      actual = SortedSquares.run([1, 2, 3, 4, 5])
      expect(actual).must_equal expected
    end

    it "returns sorted squares of an array with only -ve elements" do
      expected = [1, 4, 9, 16, 25]
      actual = SortedSquares.run([-5, -4, -3, -2, -1])
      expect(actual).must_equal expected
    end
    it "returns sorted squares of an array with +ve/-ve elements" do
      expected = [0, 1, 4, 9, 16, 25]
      actual = SortedSquares.run([-4, -2, -1, 0, 3, 5])
      expect(actual).must_equal expected
    end
  end
end
