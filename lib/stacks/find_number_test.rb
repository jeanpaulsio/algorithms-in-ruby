require_relative "../../test_helper"
require_relative "find_number"
require_relative "stack"

describe FindNumber do
  describe "edge cases" do
    it "should return false given an empty stack" do
      actual = FindNumber.run(3, Stack.new)
      expect(actual).must_equal false
    end

    it "should return false given a nil stack" do
      actual = FindNumber.run(3, nil)
      expect(actual).must_equal false
    end
  end

  describe "base cases" do
    it "should work with one item in stack" do
      actual = FindNumber.run(3, Stack.generate(3))
      expect(actual).must_equal true
    end

    it "should find N in two-item stack" do
      actual = FindNumber.run(3, Stack.generate(2, 3))
      expect(actual).must_equal true
    end

    it "should work when N is not in two-item stack" do
      actual = FindNumber.run(3, Stack.generate(1, 2))
      expect(actual).must_equal false
    end
  end

  describe "regular cases" do
    it "should work when N is in stack greater than 2 items" do
      stack = Stack.generate(1, 2, 3, 4, 5)
      actual = FindNumber.run(3, stack)
      expect(actual).must_equal true

      # Make sure original stack isn't affected
      expect(stack.size).must_equal 5
    end

    it "should work when N is not in stack greater than 2 items" do
      actual = FindNumber.run(3, Stack.generate(1, 2, 4, 5))
      expect(actual).must_equal false
    end
  end
end
