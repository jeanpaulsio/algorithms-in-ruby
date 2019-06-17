require_relative '../../test_helper'
require_relative 'square_root'

class SquareRootTest < Minitest::Test
  def test_cases
    1.upto(20) { |i| assert_equal sqrt_floored(i), SquareRoot.run(i) }
  end

  def sqrt_floored(i)
    (Math.sqrt i).floor
  end
end
