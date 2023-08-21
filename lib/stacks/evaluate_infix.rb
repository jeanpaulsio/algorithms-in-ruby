# Problem:
# Given an arithmetic expression with * / - + operators and single digit numbers
# evaluate it and return the result
#
# Given: 1 + 2 / 1 + 3 * 2
# Result:  9, since 1 + 2 + 6

require_relative "stack"

class EvaluateInfix
  attr_accessor :operands, :operators, :expression

  def initialize(arr)
    @operands = Stack.new
    @operators = Stack.new
    @expression = arr
  end

  def run
    return 0 if expression.empty?

    expression.each do |char|
      if is_operand? char
        operands.push char
      elsif is_operator? char
        process(operators, operands) while !operators.empty? && precedence(operators.peek) >= precedence(char)

        operators.push char
      end
    end

    process(operators, operands) until operators.empty?

    operands.pop.to_i
  end

  private

  def is_operator?(char)
    ["+", "-", "/", "*"].include?(char)
  end

  def is_operand?(char)
    return false if is_operator?(char)

    char >= "0" || char <= "9"
  end

  def precedence(char)
    return 2 if ["/", "*"].include?(char)
    return 1 if ["+", "-"].include?(char)
  end

  def process(operator_stack, operand_stack)
    j = operand_stack.pop.to_i
    i = operand_stack.pop.to_i

    op = operator_stack.pop
    result = 0

    if op == "/"
      result = i / j
    elsif op == "*"
      result = i * j
    elsif op == "+"
      result = i + j
    elsif op == "-"
      result = i - j
    end

    operands.push(result.to_s)
  end
end
