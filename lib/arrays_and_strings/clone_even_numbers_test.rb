require_relative "../../test_helper"
require_relative "clone_even_numbers"

describe CloneEvenNumbers do
  describe "base cases" do
    it "should work for single odd item" do
      expected = [1]
      actual = CloneEvenNumbers.run([1])
      expect(actual).must_equal expected
    end

    it "should work for single even item" do
      expected = [2, 2]
      actual = CloneEvenNumbers.run([2, -1])
      expect(actual).must_equal expected
    end
  end

  describe "regular cases" do
    it "should clone even numbers" do
      expected = [1, 2, 2, 3, 4, 4, 5]
      actual = CloneEvenNumbers.run([1, 2, 3, 4, 5, -1, -1])
      expect(actual).must_equal expected
    end
  end
end
