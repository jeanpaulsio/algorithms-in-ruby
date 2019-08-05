require_relative "../../test_helper"
require_relative "find_max"

describe FindMax do
  describe "edge cases" do
  end

  describe "base cases" do
  end

  describe "regular cases" do
    it "should do stuff" do
      subject = FindMax.new
      subject.enqueue 4
      subject.enqueue 2
      expect(subject.max).must_equal(4)

      subject.dequeue
      expect(subject.max).must_equal(2)

      subject.enqueue 3
      expect(subject.max).must_equal(3)

      subject.enqueue 1
      expect(subject.max).must_equal(3)

      subject.enqueue 2
      subject.enqueue 2
      expect(subject.max).must_equal(3)

      subject.enqueue 2
      expect(subject.max).must_equal(3)

      subject.enqueue 5
      expect(subject.max).must_equal(5)
    end
  end
end
