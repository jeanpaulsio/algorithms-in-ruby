require_relative '../test_helper'
require_relative 'move_zeroes_to_end'

class MoveZeroesToEndTest < Minitest::Test
  def test_base_case_01
    expected = [1, 2, 4, 3, 5, 0, 0, 0]
    actual = MoveZeroesToEnd.run [1, 2, 0, 4, 3, 0, 5, 0]
    assert_equal expected, actual
  end

  def test_base_case_02
    expected = [1, 2, 3, 6, 0, 0, 0]
    actual = MoveZeroesToEnd.run [1, 2, 0, 0, 0, 3, 6]
    assert_equal expected, actual
  end
end