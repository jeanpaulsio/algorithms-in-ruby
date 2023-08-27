require_relative "../../test_helper"
require_relative "reverse_words"

describe ReverseWords do
  describe "corner cases" do
    it "should handle nil input" do
      subject = proc { ReverseWords.run(nil) }
      expect(subject).must_raise ReverseWords::NilInput
    end

    it "should handle an empty string as input" do
      expected = ""
      actual = ReverseWords.run("")
      expect(actual).must_equal expected
    end

    it "should handle a single letter" do
      expected = "a"
      actual = ReverseWords.run("a")
      expect(actual).must_equal expected
    end

    it "should handle input beginning with a space" do
      expected = "a"
      actual = ReverseWords.run(" a")
      expect(actual).must_equal expected
    end

    it "should handle input ending with a space" do
      expected = "a"
      actual = ReverseWords.run("a ")
      expect(actual).must_equal expected
    end
  end

  describe "base cases" do
    it "should work with 1 word" do
      expected = "foo"
      actual = ReverseWords.run("foo")
      expect(actual).must_equal expected
    end

    it "should work with 2 words" do
      expected = "bar foo"
      actual = ReverseWords.run("foo bar")
      expect(actual).must_equal expected
    end
  end

  describe "regular cases" do
    it "should work with 5 words" do
      expected = "house a in live i"
      actual = ReverseWords.run("i live in a house")
      expect(actual).must_equal expected
    end

    it "should work with 5 words where first word is more than 1 letter" do
      expected = "house a in live they"
      actual = ReverseWords.run("they live in a house")
      expect(actual).must_equal expected
    end
  end
end
