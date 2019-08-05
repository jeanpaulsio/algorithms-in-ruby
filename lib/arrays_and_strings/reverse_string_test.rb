require_relative "../../test_helper"
require_relative "reverse_string"

describe ReverseString do
  describe "edge cases" do
    it "should work for a single word with a space" do
      expected = "foo"
      actual = ReverseString.run "foo "
      expect(actual).must_equal expected
    end
  end

  describe "base cases" do
    it "should work for two words" do
      expected = "bar foo"
      actual = ReverseString.run "foo bar"
      expect(actual).must_equal expected
    end

    it "should work for one word" do
      expected = "bar"
      actual = ReverseString.run "bar"
      expect(actual).must_equal expected
    end
  end

  describe "regular cases" do
    it "should work for multiple words" do
      expected = "quux baz bar foo"
      actual = ReverseString.run "foo bar baz quux"
      expect(actual).must_equal expected
    end
  end
end
