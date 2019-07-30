# Problem:
#
# Given:
# Result:

class TwoStackArray
  class StackFullError < StandardError; end
  class StackEmptyError < StandardError; end

  attr_accessor :store, :stack_1, :stack_2

  def initialize(size)
    @store = Array.new(size)
    @stack_1 = 0
    @stack_2 = size - 1
  end

  def push(stack_num, item)
    raise ArgumentError if stack_num < 1 || stack_num > 2
    raise StackFullError if stack_1 > stack_2

    index = stack_num == 1 ? stack_1 : stack_2
    store[index] = item

    if stack_num == 1
      @stack_1 += 1
    else
      @stack_2 -= 1
    end
  end

  def pop(stack_num)
    raise ArgumentError if stack_num < 1 || stack_num > 2

    if stack_num == 1 && @stack_1 > 0
      @stack_1 -= 1
      return store[stack_1]
    elsif stack_num == 2 && @stack_2 < store.length - 1
      @stack_2 += 1
      return store[stack_2]
    end

    raise StackEmptyError
  end
end
