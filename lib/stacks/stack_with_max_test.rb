require_relative '../../test_helper'
require_relative 'stack_with_max'

describe StackWithMax do
  describe 'edge cases' do
    # empty stack
  end

  describe 'base cases' do
    # stack with one value
  end

  describe 'regular cases' do
    it 'should keep track of the max value in the stack' do
      stack = StackWithMax.new
      stack.push 1
      stack.push 1
      stack.push 3
      expect(stack.max).must_equal(3)

      stack.push 2
      expect(stack.max).must_equal(3)

      stack.push 3
      stack.pop
      expect(stack.max).must_equal(3)

      stack.push 4
      expect(stack.max).must_equal(4)

      stack.pop
      stack.pop
      stack.pop
      expect(stack.max).must_equal(1)
    end
  end
end
