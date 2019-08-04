require_relative "../../test_helper"
require_relative "evaluate_infix"

describe EvaluateInfix do
  describe "edge cases" do
    it "should work with an empty expression" do
      expected = 0
      expression = "".split
      actual = EvaluateInfix.new(expression).run
      expect(actual).must_equal expected
    end

    it "should work with a single number as an expression" do
      expected = 3
      expression = "3".split
      actual = EvaluateInfix.new(expression).run
      expect(actual).must_equal expected
    end
  end

  describe "base cases" do
    it "shouuld work ever single + operation" do
      expected = 3
      expression = "1 + 2".split
      actual = EvaluateInfix.new(expression).run
      expect(actual).must_equal expected
    end

    it "shouuld work ever single - operation" do
      expected = -1
      expression = "1 - 2".split
      actual = EvaluateInfix.new(expression).run
      expect(actual).must_equal expected
    end

    it "shouuld work ever single / operation" do
      expected = 2
      expression = "2 / 1".split
      actual = EvaluateInfix.new(expression).run
      expect(actual).must_equal expected
    end

    it "shouuld work ever single * operation" do
      expected = 8
      expression = "4 * 2".split
      actual = EvaluateInfix.new(expression).run
      expect(actual).must_equal expected
    end
  end

  describe "regular cases" do
    it "should work with multiple operators of same precendence" do
      expected = 3
      expression = "1 + 2 - 1 + 3 - 2".split
      actual = EvaluateInfix.new(expression).run
      expect(actual).must_equal expected
    end

    it "should work with multiple operators of different precendence" do
      expected = 9
      expression = "1 + 2 / 1 + 3 * 2".split
      actual = EvaluateInfix.new(expression).run
      expect(actual).must_equal expected
    end
  end
end
