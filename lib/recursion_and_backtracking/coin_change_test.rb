require_relative "../../test_helper"
require_relative "coin_change"

describe CoinChange do
  describe "edge cases" do
    it "should print an empty string given an empty array" do
      expected = ""
      subject = -> { CoinChange.run([], 1, [], 0, 0) }
      expect(subject).must_output expected
    end
  end

  describe "base cases" do
    it "should print single item given an array of length 1" do
      expected = print_results [1]
      subject = -> { CoinChange.run([1], 1, [], 0, 0) }
      expect(subject).must_output expected
    end

    it "should print an empty string when target is negative" do
      expected = ""
      subject = -> { CoinChange.run([], -1, [], 0, 0) }
      expect(subject).must_output expected
    end
  end

  describe "regular cases" do
    it "should print combinations when target == largest coin" do
      arr = [1, 2, 5]
      target = 5

      expected = print_results(
        [1, 1, 1, 1, 1],
        [1, 1, 1, 2],
        [1, 2, 2],
        [5]
      )
      subject = -> { CoinChange.run(arr, target, [], 0, 0) }
      expect(subject).must_output expected
    end

    it "should print combinations when target >= largest coin" do
      arr = [1, 2, 5]
      target = 6

      expected = print_results(
        [1, 1, 1, 1, 1, 1],
        [1, 1, 1, 1, 2],
        [1, 1, 2, 2],
        [1, 5],
        [2, 2, 2]
      )
      subject = -> { CoinChange.run(arr, target, [], 0, 0) }
      expect(subject).must_output expected
    end
  end
end
