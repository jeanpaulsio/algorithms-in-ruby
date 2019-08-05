require_relative "../../test_helper"
require_relative "reverse_array"

describe ReverseArray do
  describe "base cases" do
    it "should work for arrays with one item" do
      expected = %w[asdf]
      actual = ReverseArray.run %w[asdf]
      expect(actual).must_equal expected
    end
  end

  describe "regular cases" do
    it "should work for arrays of even length" do
      expected = [0, 1, 2, 3, 4, 5]
      actual = ReverseArray.run [5, 4, 3, 2, 1, 0]
      expect(actual).must_equal expected
    end

    it "should work for arrays of odd length" do
      expected = %w[foo bar baz]
      actual = ReverseArray.run %w[baz bar foo]
      expect(actual).must_equal expected
    end
  end
end
