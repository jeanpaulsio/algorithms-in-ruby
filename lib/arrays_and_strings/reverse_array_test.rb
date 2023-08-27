require_relative "../../test_helper"
require_relative "reverse_array"

describe ReverseArray do
  describe "corner cases" do
    it "handles an empty array" do
      expected = []
      actual = ReverseArray.run([])
      expect(actual).must_equal expected
    end
  end

  describe "base cases" do
    it "sorts an array with a single element" do
      expected = [1]
      actual = ReverseArray.run([1])
      expect(actual).must_equal expected
    end
  end

  describe "regular cases" do
    it "reverses an array with two elements" do
      expected = [2, 1]
      actual = ReverseArray.run([1, 2])
      expect(actual).must_equal expected
    end

    it "reverses an array with three elements" do
      expected = [3, 1, 2]
      actual = ReverseArray.run([2, 1, 3])
      expect(actual).must_equal expected
    end

    it "reverses an array with an odd number of elements" do
      expected = [9, 3, 2, 5, 2, 5, 3]
      actual = ReverseArray.run([3, 5, 2, 5, 2, 3, 9])
      expect(actual).must_equal expected
    end

    it "reverses an array with an even number of elements" do
      expected = [3, 2, 5, 2, 5, 3]
      actual = ReverseArray.run([3, 5, 2, 5, 2, 3])
      expect(actual).must_equal expected
    end
  end
end
