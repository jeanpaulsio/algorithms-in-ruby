require_relative "../../test_helper"
require_relative "two_sum"

describe TwoSum do
  describe "regular cases" do
    it "should find the target" do
      expected = [3, 9]
      actual = TwoSum.run([0, 1, 2, 3, 4, 5, 6, 7, 8, 97, 101], 100)
      expect(actual).must_equal expected
    end

    it "should find targets is towards the end" do
      expected = [3, 4]
      actual = TwoSum.run([1, 2, 3, 5, 6, 7], 11)
      expect(actual).must_equal expected
    end

    it "should find targets is towards the front" do
      expected = [0, 1]
      actual = TwoSum.run([1, 2, 3, 5, 6, 7], 3)
      expect(actual).must_equal expected
    end

    it "should return nil when target is not in array" do
      actual = TwoSum.run([1, 2, 3, 5, 6, 7], 100)
      expect(actual).must_be_nil
    end
  end
end
