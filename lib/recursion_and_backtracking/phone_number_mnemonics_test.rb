require_relative "../../test_helper"
require_relative "phone_number_mnemonics"

describe PhoneNumberMnemonics do
  describe "edge cases" do
    it "should print an empty string given an empty array" do
      expected = ""
      subject = -> { PhoneNumberMnemonics.run([], Array.new(2), 0, 0) }
      expect(subject).must_output expected
    end
  end

  describe "base cases" do
    it "should print all cases for a single letter" do
      expected = print_results ["A"], ["B"], ["C"]
      subject = -> { PhoneNumberMnemonics.run([2], Array.new(1), 0, 0) }
      expect(subject).must_output expected
    end

    it "should print nothing when only given 0s and 1s" do
      expected = ""
      subject = -> { PhoneNumberMnemonics.run([0, 1], Array.new(1), 0, 0) }
      expect(subject).must_output expected
    end
  end

  describe "regular cases" do
    it "should ignore 0s and 1s with other numbers" do
      expected = print_results(
        %w[A D], %w[A E], %w[A F],
        %w[B D], %w[B E], %w[B F],
        %w[C D], %w[C E], %w[C F]
      )
      subject = -> { PhoneNumberMnemonics.run([2, 0, 1, 3], Array.new(2), 0, 0) }
      expect(subject).must_output expected
    end

    it "should print all combinations" do
      expected = print_results(
        %w[P T], %w[P U], %w[P V],
        %w[Q T], %w[Q U], %w[Q V],
        %w[R T], %w[R U], %w[R V],
        %w[S T], %w[S U], %w[S V]
      )
      subject = -> { PhoneNumberMnemonics.run([7, 8], Array.new(2), 0, 0) }
      expect(subject).must_output expected
    end

    it "should print combinations when buffer > 2" do
      expected = print_results(
        %w[A D G], %w[A D H], %w[A D I],
        %w[A E G], %w[A E H], %w[A E I],
        %w[A F G], %w[A F H], %w[A F I],
        %w[B D G], %w[B D H], %w[B D I],
        %w[B E G], %w[B E H], %w[B E I],
        %w[B F G], %w[B F H], %w[B F I],
        %w[C D G], %w[C D H], %w[C D I],
        %w[C E G], %w[C E H], %w[C E I],
        %w[C F G], %w[C F H], %w[C F I],
      )
      subject = -> { PhoneNumberMnemonics.run([2, 3, 4], Array.new(3), 0, 0) }
      expect(subject).must_output expected
    end

    it "should ignore 0s and 1s when buffer > 2" do
      expected = print_results(
        %w[A D G], %w[A D H], %w[A D I],
        %w[A E G], %w[A E H], %w[A E I],
        %w[A F G], %w[A F H], %w[A F I],
        %w[B D G], %w[B D H], %w[B D I],
        %w[B E G], %w[B E H], %w[B E I],
        %w[B F G], %w[B F H], %w[B F I],
        %w[C D G], %w[C D H], %w[C D I],
        %w[C E G], %w[C E H], %w[C E I],
        %w[C F G], %w[C F H], %w[C F I],
      )
      subject = -> { PhoneNumberMnemonics.run([0, 1, 2, 3, 4], Array.new(3), 0, 0) }
      expect(subject).must_output expected
    end
  end
end
