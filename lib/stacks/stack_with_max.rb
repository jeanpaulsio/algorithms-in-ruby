# Problem:
# Implement a stack with a max function. The function runs in O(1) time and
# returns the value of the maximum number in the stack
#
# Given: 1, 2, 3, 4, 3, 2, 1
# Result: 4

require_relative 'stack'

class StackWithMax < Stack
  attr_accessor :max_stack

  def initialize
    super
    @max_stack = Stack.new
  end

  def push(element)
    if max_stack.empty? || max_stack.peek <= element
      max_stack.push(element)
    end

    super(element)
  end

  def pop
    popped = super
    max_stack.pop if max_stack.peek == popped
  end

  def max
    max_stack.peek
  end
end
