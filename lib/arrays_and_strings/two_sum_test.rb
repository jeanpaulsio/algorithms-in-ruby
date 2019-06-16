require_relative '../../test_helper'
require_relative 'two_sum'

class TwoSumTest < Minitest::Test
  def test_base_case
    expected = [3, 9]
    actual = TwoSum.run([0, 1, 2, 3, 4, 5, 6, 7, 8, 97, 101], 100)
    assert_equal expected, actual
  end

  def test_target_is_towards_end
    expected = [3, 4]
    actual = TwoSum.run([1, 2, 3, 5, 6, 7], 11)
    assert_equal expected, actual
  end

  def test_target_is_towards_beginning
    expected = [0, 1]
    actual = TwoSum.run([1, 2, 3, 5, 6, 7], 3)
    assert_equal expected, actual
  end

  def test_target_is_not_in_array
    actual = TwoSum.run([1, 2, 3, 5, 6, 7], 100)
    assert_nil actual
  end
end
