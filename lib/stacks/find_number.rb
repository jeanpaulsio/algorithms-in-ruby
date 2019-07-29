# Problem:
# Find if a given number N exists in a stack S
#
# Given: n = 3, stack = [1, 2, 3, 4, 5]
# Result: true

require_relative 'stack'

class FindNumber
  def self.run(n, stack)
    return false if stack.nil?

    temp_stack = Stack.new
    result = false

    until stack.empty?
      if stack.peek == n
        result = true
        break
      end

      temp_stack.push(stack.pop)
    end

    until temp_stack.empty?
      stack.push(temp_stack.pop)
    end

    result
  end
end
