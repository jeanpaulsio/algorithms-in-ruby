require_relative '../../test_helper'
require_relative 'fibonacci'

class FibonacciTest < Minitest::Test
  def test_base_cases
    assert_equal 1, Fibonacci.run(1)
    assert_equal 1, Fibonacci.run(2)
    assert_equal 2, Fibonacci.run(3)
    assert_equal 3, Fibonacci.run(4)
    assert_equal 5, Fibonacci.run(5)
    assert_equal 8, Fibonacci.run(6)
    assert_equal 13, Fibonacci.run(7)
    assert_equal 21, Fibonacci.run(8)
    assert_equal 6_765, Fibonacci.run(20)
    assert_equal 832_040, Fibonacci.run(30)
    assert_equal 102_334_155, Fibonacci.run(40)
  end
end
