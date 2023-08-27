require_relative "../../test_helper"
require_relative "two_sum"

describe TwoSum do
  describe "corner cases" do
    it "handles an empty array" do
      actual = TwoSum.run([], target: 3)
      expect(actual).must_be_nil
    end

    it "handles an array with a single element" do
      actual = TwoSum.run([1], target: 3)
      expect(actual).must_be_nil
    end
  end

  describe "base cases" do
    it "finds the sum in an array with two elements" do
      expected = [2, 3]
      actual = TwoSum.run([2, 3], target: 5)
      expect(actual).must_equal expected
    end

    it "cannot find sum in an array with two elements" do
      actual = TwoSum.run([2, 3], target: 6)
      expect(actual).must_be_nil
    end
  end

  describe "regular cases" do
    it "finds the sum in an array with three elements" do
      expected = [2, 3]
      actual = TwoSum.run([1, 2, 3], target: 5)
      expect(actual).must_equal expected
    end

    it "cannot find sum in an array with two elements" do
      actual = TwoSum.run([1, 2, 3], target: 6)
      expect(actual).must_be_nil
    end

    it "finds the sum in an array with four elements" do
      expected = [2, 3]
      actual = TwoSum.run([1, 2, 3, 8], target: 5)
      expect(actual).must_equal expected
    end

    it "cannot find sum in an array with two elements" do
      actual = TwoSum.run([1, 2, 3, 6], target: 6)
      expect(actual).must_be_nil
    end

    it "finds the sum in the middle of an array" do
      expected = [5, 6]
      actual = TwoSum.run([1, 2, 3, 5, 6, 7], target: 11)
      expect(actual).must_equal expected
    end
  end
end
