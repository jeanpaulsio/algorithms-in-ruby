require_relative "../../test_helper"
require_relative "two_stack_array"

describe TwoStackArray do
  describe "edge cases" do
    # empty array
    # full array
    # s1 empty / full
    # s2 empty / full
  end

  describe "base cases" do
    # single element in s1/s2
    # array size 0, 1, 2
  end

  describe "regular cases" do
    it "should create two stacks with an array of size 10" do
      subject = TwoStackArray.new(10)
      subject.push(1, 1)
      subject.push(1, 2)
      subject.push(1, 3)
      subject.push(1, 4)
      subject.push(1, 5)
      subject.push(2, 6)
      subject.push(2, 7)
      subject.push(2, 8)
      subject.push(2, 9)
      subject.push(2, 10)

      expect(subject.pop(1)).must_equal(5)
      expect(subject.pop(2)).must_equal(10)
    end
  end
end
