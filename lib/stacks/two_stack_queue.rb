# Problem:
# Implement a Queue using two stacks
#
# Queues are FIFO
# 5 -> 4 -> 3 -> 2 -> 1
#
# Enqueue 6
# 6 -> 5 -> 4 -> 3 -> 2 -> 1
#
# Dequeue
# 6 -> 5 -> 4 -> 3 -> 2

require_relative "stack"

class TwoStackQueue
  class EmptyQueueError < StandardError; end

  attr_accessor :stack_a, :stack_b

  def initialize(*values)
    @stack_a = Stack.generate(*values)
    @stack_b = Stack.new
  end

  def enqueue(n)
    stack_a.push(n)
  end

  def dequeue
    if stack_b.empty?
      until stack_a.empty?
        stack_b.push(stack_a.pop)
      end
    end

    raise EmptyQueueError if stack_b.empty?

    stack_b.pop
  end
end
